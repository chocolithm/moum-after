package moum.project.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import moum.project.config.CustomUserDetails;
import moum.project.dao.UserDao;
import moum.project.dao.UserSnsDao;
import moum.project.vo.User;
import moum.project.vo.User_SNS;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserService;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.OAuth2Error;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.*;

/**
 * packageName    : moum.project.service
 * fileName       : CustomOAuth2UserService
 * author         : narilee
 * date           : 24. 11. 13.
 * description    : OAuth2 사용자 인증을 처리하는 커스텀 서비스 클래스입니다.
 *                  소셜 로그인(OAuth2) 인증 처리 및 사용자 정보 관리를 담당합니다.
 * ===========================================================
 * DATE              AUTHOR             NOTE
 * -----------------------------------------------------------
 * 24. 11. 13.        narilee       최초 생성
 * 24. 11. 18.        narilee       로그인및 회원가입시 간편로그인 적용
 */
@Service
@RequiredArgsConstructor
@Log4j2
public class CustomOAuth2UserService implements OAuth2UserService<OAuth2UserRequest, OAuth2User> {

  private final UserDao userDao;
  private final UserSnsDao userSnsDao;

  @Override
  @Transactional
  public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
    OAuth2UserService<OAuth2UserRequest, OAuth2User> delegate = new DefaultOAuth2UserService();
    OAuth2User oAuth2User = delegate.loadUser(userRequest);

    String registrationId = userRequest.getClientRegistration().getRegistrationId();
    String userNameAttributeName =
        userRequest.getClientRegistration().getProviderDetails().getUserInfoEndpoint()
            .getUserNameAttributeName();

    Map<String, Object> attributes = oAuth2User.getAttributes();

    // 제공자별 속성 추출
    String email;
    String name;
    String providerId;

    if ("kakao".equals(registrationId)) {
      Map<String, Object> kakaoAccount = (Map<String, Object>) attributes.get("kakao_account");
      Map<String, Object> kakaoProfile = (Map<String, Object>) kakaoAccount.get("profile");

      email = (String) kakaoAccount.get("email");
      name = (String) kakaoProfile.get("nickname");
      providerId = String.valueOf(attributes.get("id"));
    } else if ("naver".equals(registrationId)) {
      Map<String, Object> response = (Map<String, Object>) attributes.get("response");

      email = (String) response.get("email");
      name = (String) response.get("name");
      providerId = (String) response.get("id");
    } else { // Google
      email = (String) attributes.get("email");
      name = (String) attributes.get("name");
      providerId = (String) attributes.get(userNameAttributeName);
    }

    try {
      // 현재 인증된 사용자 정보 가져오기
      Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
      User user;

      if (authentication != null && authentication.isAuthenticated() && authentication.getPrincipal() instanceof CustomUserDetails) {
        // 현재 로그인된 사용자가 있는 경우 - SNS 연동 시나리오
        CustomUserDetails currentUser = (CustomUserDetails) authentication.getPrincipal();
        user = userDao.findByEmail(currentUser.getUsername());

        // SNS 연동 정보 저장 (이미 연동되어 있지 않은 경우에만)
        User_SNS existingSns =
            userSnsDao.selectUser_SNSByProviderAndUserId(registrationId, providerId);
        if (existingSns == null) {
          User_SNS newUserSns = new User_SNS();
          newUserSns.setProvider(registrationId);
          newUserSns.setProviderUserId(providerId);
          newUserSns.setUserId(user.getNo());
          userSnsDao.insertUser_SNS(newUserSns);
          log.info("SNS account linked - Provider: {}, User: {}", registrationId, email);
        }
      } else {
        // SNS 로그인 시나리오
        // 먼저 SNS 연동 정보로 사용자 찾기
        User_SNS userSns = userSnsDao.selectUser_SNSByProviderAndUserId(registrationId, providerId);

        if (userSns != null) {
          // 연동된 계정이 있으면 해당 사용자 정보 가져오기
          user = userDao.findBy(userSns.getUserId());
          if (user == null) {
            throw new OAuth2AuthenticationException(
                new OAuth2Error("user_not_found", "User not found for SNS account", null));
          }
        } else {
          // 연동된 계정이 없으면 이메일로 기존 사용자 찾기
          user = userDao.findByEmail(email);

          if (user == null) {
            // 새 사용자 생성
            user = new User();
            user.setEmail(email);
            user.setNickname(name);
            user.setPassword(UUID.randomUUID().toString());
            user.setAdmin(false);
            user.setStartDate(LocalDateTime.now());
            userDao.insert(user);
            log.info("New user created - Email: {}, Provider: {}", email, registrationId);
          }

          // SNS 연동 정보 저장
          User_SNS newUserSns = new User_SNS();
          newUserSns.setProvider(registrationId);
          newUserSns.setProviderUserId(providerId);
          newUserSns.setUserId(user.getNo());
          userSnsDao.insertUser_SNS(newUserSns);
          log.info("SNS account linked - Provider: {}, User: {}", registrationId, email);
        }
      }

      List<SimpleGrantedAuthority> authorities = new ArrayList<>();
      if (user.isAdmin()) {
        authorities.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
      } else {
        authorities.add(new SimpleGrantedAuthority("ROLE_USER"));
      }

      return new CustomUserDetails(user.getEmail(), user.getPassword(), user.getNickname(),
          authorities, attributes, userNameAttributeName);

    } catch (Exception e) {
      log.error("OAuth2 authentication error", e);
      throw new OAuth2AuthenticationException(
          new OAuth2Error("authentication_error", e.getMessage(), null));
    }
  }
}
