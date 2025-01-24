-- 유형 대분류 데이터
INSERT INTO maincategory (maincategory_id, category_name, color) VALUES
(1, '건담프라모델', 'purple'),
(2, '레고', 'yellow'),
(3, '신발', 'blue'),
(-999, '기타', 'lightgrey');

-- 유형 소분류 데이터
INSERT INTO subcategory (subcategory_id, maincategory_id, category_name) VALUES
(1, 1, 'PG'),
(2, 1, 'RG'),
(3, 1, 'MG'),
(4, 1, 'HG'),
(5, 1, 'SD'),
(6, 1, 'EG'),
(7, 1, '1/60'),
(8, 1, '1/100'),
(9, 1, '1/144'),
(10, 1, 'RE/100'),
(11, 1, 'B-CLUB'),
(12, 1, 'EX 모델'),
(13, 1, 'SD 건담 BB 전사'),
(14, 1, 'SD 건담 EX 스탠다드'),
(15, 1, 'SD 건담 크로스 실루엣'),
(16, 1, '풀 메카닉스'),
(17, 2, '아키텍처'),
(18, 2, '배트맨'),
(19, 2, '보태니컬 컬렉션'),
(20, 2, '브릭헤즈'),
(21, 2, '시티'),
(22, 2, '클래식'),
(23, 2, '크리에이터 3in1'),
(24, 2, '크리에이터 엑스퍼트'),
(25, 2, 'DC'),
(26, 2, '슈퍼 배드 4'),
(27, 2, '디즈니'),
(28, 2, '도트'),
(29, 2, '듀플로'),
(30, 2, '프렌즈'),
(31, 2, '해리포터'),
(32, 2, '아이디어'),
(33, 2, '쥬라기월드'),
(34, 2, '레고 동물의 숲'),
(35, 2, '레고 아트'),
(36, 2, '레고 아바타'),
(37, 2, '레고 Braile Bricks'),
(38, 2, '레고 드림즈'),
(39, 2, '레고 듀플로 페파 피그'),
(40, 2, '레고 에듀케이션'),
(41, 2, '레고 Fortnite'),
(42, 2, '레고 개비의 매직 하우스'),
(43, 2, '레고 Icons'),
(44, 2, '레고 인디애나 존스'),
(45, 2, '레고 슈퍼 마리오'),
(46, 2, '레고 젤다의 전설'),
(47, 2, '레고 웬즈데이'),
(48, 2, '레고 위키드'),
(49, 2, 'Lord of the Rings'),
(50, 2, '마블'),
(51, 2, '마인크래프트'),
(52, 2, '미니 피겨'),
(53, 2, '몽키 키드'),
(54, 2, '닌자고'),
(55, 2, '오버워치'),
(56, 2, '파워드업'),
(57, 2, '파워퍼프걸'),
(58, 2, '소닉 더 헤지혹'),
(59, 2, '스피드 챔피언'),
(60, 2, '스파이더맨'),
(61, 2, '스타워즈'),
(62, 2, '테크닉'),
(63, 2, 'Agents'),
(64, 2, '캐슬'),
(65, 2, 'Orient Expedition'),
(66, 2, 'Pharaohs Quest'),
(67, 2, '마인드스톰'),
(68, 2, '믹셀'),
(69, 2, '엘프'),
(70, 2, '킹덤'),
(71, 2, '히든사이드'),
(72, 2, '바이오니클'),
(73, 2, '부스트'),
(74, 2, '엑소 포스'),
(75, 2, '히어로 팩토리'),
(76, 2, '키마의 전설'),
(77, 2, '넥소 나이츠'),
(78, 3, '나이키'),
(79, 3, '뉴발란스'),
(80, 3, '컨버스'),
(81, 3, '아디다스'),
(82, 3, '팀버랜드'),
(83, 3, '디스커버리'),
(84, 3, '아식스'),
(85, 3, '휠라'),
(86, 3, '구찌'),
(87, 3, '리복'),
(88, 3, '반스'),
(89, 3, '프로스펙스'),
(90, 3, 'RAF SIMONS'),
(91, 3, '살로몬'),
(92, 3, '써코니'),
(93, 3, '내셔널지오그래픽'),
(94, 3, '발렌시아가'),
(95, 3, '루이비통'),
(96, 3, 'SACAI'),
(97, 3, '아크네'),
(98, 3, 'A.P.C.'),
(99, 3, '미즈노'),
(100, 3, 'HOKA ONEONE'),
(101, 3, '발렌티노'),
(102, 3, '알렉산더 맥퀸'),
(103, 3, 'MASION MAGIELA'),
(104, 3, 'MLB'),
(105, 3, '베트멍'),
(106, 3, '퓨마'),
(107, 1, '프리미엄 반다이'),
(108, 1, '하이 레졸루션 모델'),
(-999, -999, '기타');


-- 업적 데이터
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('FIRST_LOGIN', '첫 발걸음', '회원 가입 후 로그인 하세요.', '회원 가입 후 첫 로그인', '회원', 10, 1, 'FIRST_LOGIN.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('SEVEN_LOGIN', '7일의 약속', '7일 동안 로그인하세요.', '로그인 7일 카운트 (user 테이블의 last_login 활용)', '회원', 20, 7, 'SEVEN_LOGIN.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('THIRTY_LOGIN', '30일의 여정', '30일 동안 로그인하세요.', '로그인 30일 카운트 (user 테이블의 last_login 활용)', '회원', 30, 30, 'THIRTY_LOGIN.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('HUNDRED_LOGIN', '100번의 만남', '100일 동안 로그인하세요.', '로그인 100일 카운트 (user 테이블의 last_login 활용)', '회원', 70, 100, 'HUNDRED_LOGIN.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('FIRST_POST', '첫 발자취', '첫 게시글을 작성하세요.', '게시글 1개 등록', '게시글', 10, 1, 'FIRST_POST.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('TEN_POST', '작가의 길', '게시글을 10개 작성하세요.', '게시글 10개 등록', '게시글', 30, 10, 'TEN_POST.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('THIRTY_POST', '게시글 정복자', '게시글을 30개 작성하세요.', '게시글 30개 등록', '게시글', 50, 30, 'THIRTY_POST.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('FIRST_UPT_POST', '완벽주의의 시작', '게시글을 1번 수정하세요.', '게시글 수정 1회', '게시글', 10, 1, 'FIRST_UPT_POST.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('TEN_UPT_POST', '완벽을 향해', '게시글을 10번 수정하세요.', '게시글 수정 10회', '게시글', 30, 10, 'TEN_UPT_POST.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('THIRTY_UPT_POST', '완벽주의자', '게시글을 30번 수정하세요.', '게시글 수정 30회', '게시글', 50, 30, 'THIRTY_UPT_POST.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('FIRST_DEL_POST', '첫 삭제', '게시글을 1회 삭제하세요.', '게시글 삭제 1회', '게시글', 10, 1, 'FIRST_DEL_POST.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('TEN_DEL_POST', '흔적 지우기', '게시글을 10회 삭제하세요.', '게시글 삭제 10회', '게시글', 30, 10, 'TEN_DEL_POST.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('THIRTY_DEL_POST', '게시글 정리왕', '게시글을 30회 삭제하세요.', '게시글 삭제 30회', '게시글', 50, 30, 'THIRTY_DEL_POST.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('TEN_COMMENT', '소통의 시작', '댓글을 10회 작성하세요.', '댓글 등록 10회', '게시글', 5, 10, 'TEN_COMMENT.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('THIRTY_COMMENT', '댓글 달인', '댓글을 30회 작성하세요.', '댓글 등록 30회', '게시글', 10, 30, 'THIRTY_COMMENT.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('HUNDRED_COMMENT', '진정한 댓글러', '댓글을 100회 작성하세요.', '댓글 등록 100회', '게시글', 30, 100, 'HUNDRED_COMMENT.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('FIRST_LEGO', '첫 레고', '레고 수집품을 1개 등록하세요.', '레고 수집품 1개 등록', '수집품', 10, 1, 'FIRST_LEGO.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('TEN_LEGO', '레고의 길', '레고 수집품을 10개 등록하세요.', '레고 수집품 10개 등록', '수집품', 30, 10, 'TEN_LEGO.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('THIRTY_LEGO', '레고왕', '레고 수집품을 30개 등록하세요.', '레고 수집품 30개 등록', '수집품', 50, 30, 'THIRTY_LEGO.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('FIRST_SHOES', '첫 신발', '신발 수집품을 1개 등록하세요.', '신발 수집품 1개 등록', '수집품', 10, 1, 'FIRST_SHOES.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('TEN_SHOES', '신발의 길', '신발 수집품을 10개 등록하세요.', '신발 수집품 10개 등록', '수집품', 30, 10, 'TEN_SHOES.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('THIRTY_SHOES', '신발왕', '신발 수집품을 30개 등록하세요.', '신발 수집품 30개 등록', '수집품', 50, 30, 'THIRTY_SHOES.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('FIRST_GUNDAM', '첫 프라모델', '프라모델 수집품을 1개 등록하세요.', '프라모델 수집품 1개 등록', '수집품', 10, 1, 'FIRST_GUNDAM.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('TEN_GUNDAM', '프라모델의 길', '프라모델 수집품을 10개 등록하세요.', '프라모델 수집품 10개 등록', '수집품', 30, 10, 'TEN_GUNDAM.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('THIRTY_GUNDAM', '프라모델왕', '프라모델 수집품을 30개 등록하세요.', '프라모델 수집품 30개 등록', '수집품', 50, 30, 'THIRTY_GUNDAM.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('TEN_COLLECTION', '수집가의 길', '수집품을 10개 등록하세요.', '수집품 10개 등록', '수집품', 20, 10, 'TEN_COLLECTION.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('COLLECTION_MASTER', '진정한 수집가', '수집품을 50개 등록하세요.', '수집품 50개 등록', '수집품', 70, 50, 'COLLECTION_MASTER.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('TEN_ACHIEVEMENT', '업적도 모아볼까', '업적을 10개 획득하세요', '업적 10개 획득', '업적', 20, 10, 'TEN_ACHIEVEMENT.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('THIRTY_ACHIEVEMENT', '업적 수집가', '업적을 30개 획득하세요', '업적 30개 획득', '업적', 50, 30, 'THIRTY_ACHIEVEMENT.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('FIRST_TRADE', '거래의 시작', '거래를 1회 진행하세요.', '거래 1회', '거래', 10, 1, 'FIRST_TRADE.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('TEN_TRADE', '거래의 달인', '거래를 10회 진행하세요.', '거래 10회', '거래', 30, 10, 'TEN_TRADE.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('THIRTY_TRADE', '수집품 거래왕', '거래를 30회 진행하세요.', '거래 30회', '거래', 50, 30, 'THIRTY_TRADE.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('FIRST_SHOES_TRADE', '첫 신발 거래', '신발을 1회 거래하세요.', '신발 거래 1회', '거래', 20, 1, 'FIRST_SHOES_TRADE.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('SHOE_PRO', '신발만 거래해', '신발을 10회 거래하세요.', '신발 거래 10회', '거래', 30, 10, 'SHOE_PRO.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('FIRST_LEGO_TRADE', '첫 레고 거래', '레고를 1회 거래하세요.', '레고 거래 1회', '거래', 20, 1, 'FIRST_LEGO_TRADE.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('LEGO_PRO', '레고만 거래해', '레고를 10회 거래하세요.', '레고 거래 10회', '거래', 30, 10, 'LEGO_PRO.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('FIRST_GUNDAM_TRADE', '첫 프라모델 거래', '프라모델을 1회 거래하세요.', '프라모델 거래 1회', '거래', 20, 1, 'FIRST_GUNDAM_TRADE.png');
INSERT INTO achievement(achievement_id, name, content, acquisition_condition, location, score, max_count, photo) VALUES('GUNDAM_PRO', '프라모델만 거래해', '프라모델을 10회 거래하세요.', '프라모델 거래 10회', '거래', 30, 10, 'GUNDAM_PRO.png');

-- 회원 데이터
INSERT INTO user (user_id, email, nickname, password, start_date, admin) VALUES
(1, 'admin@test.com', '관리자', '$2a$10$v3qFJAESrWNRNOgkbMBvUu.GfcPVxvw8Sc9dZtL3YVdGop549CvKe', now(), 1),
(2, 'user1@test.com', 'user1', '$2a$10$TjDP2VWyJmYx0s95Ygun4uMLBlihF6UEsLAMkCLsKZq9O3yoEmIpi', now(), 0),
(3, 'user2@test.com', 'user2', '$2a$10$Eu9/f8FOw3baNpewg/WUJ.4Q5zA4lA.6ifWyAO9RYyUFM5oOHmkCe', now(), 0),
(4, 'user3@test.com', 'user3', '$2a$10$GoxpPtguwz9r/IY080heXegVKMxwQ0U8o8glCR53xXZmuUS35dia.', now(), 0),
(5, 'user4@test.com', 'user4', '$2a$10$q2uSg4rx6V7oLowxbJJTq.ntBfxTnqz9HO1GkwMZOgArnY0UN9VJy', now(), 0),
(6, 'user5@test.com', 'user5', '$2a$10$TjDP2VWyJmYx0s95Ygun4uMLBlihF6UEsLAMkCLsKZq9O3yoEmIpi', now(), 0),
(7, 'user6@test.com', 'user6', '$2a$10$Eu9/f8FOw3baNpewg/WUJ.4Q5zA4lA.6ifWyAO9RYyUFM5oOHmkCe', now(), 0),
(8, 'user7@test.com', 'user7', '$2a$10$GoxpPtguwz9r/IY080heXegVKMxwQ0U8o8glCR53xXZmuUS35dia.', now(), 0),
(9, 'user8@test.com', 'user8', '$2a$10$q2uSg4rx6V7oLowxbJJTq.ntBfxTnqz9HO1GkwMZOgArnY0UN9VJy', now(), 0),
(10, 'user9@test.com', 'user9', '$2a$10$TjDP2VWyJmYx0s95Ygun4uMLBlihF6UEsLAMkCLsKZq9O3yoEmIpi', now(), 0),
(11, 'user10@test.com', 'user10', '$2a$10$Eu9/f8FOw3baNpewg/WUJ.4Q5zA4lA.6ifWyAO9RYyUFM5oOHmkCe', now(), 0),
(12, 'user11@test.com', 'user11', '$2a$10$GoxpPtguwz9r/IY080heXegVKMxwQ0U8o8glCR53xXZmuUS35dia.', now(), 0),
(13, 'user12@test.com', 'user12', '$2a$10$q2uSg4rx6V7oLowxbJJTq.ntBfxTnqz9HO1GkwMZOgArnY0UN9VJy', now(), 0),
(14, 'user13@test.com', 'user13', '$2a$10$TjDP2VWyJmYx0s95Ygun4uMLBlihF6UEsLAMkCLsKZq9O3yoEmIpi', now(), 0),
(15, 'user14@test.com', 'user14', '$2a$10$Eu9/f8FOw3baNpewg/WUJ.4Q5zA4lA.6ifWyAO9RYyUFM5oOHmkCe', '2024-11-07 18:33:09', 0),
(16, 'user15@test.com', 'user15', '$2a$10$GoxpPtguwz9r/IY080heXegVKMxwQ0U8o8glCR53xXZmuUS35dia.', '2024-11-19 11:12:41', 0),
(17, 'user16@test.com', 'user16', '$2a$10$q2uSg4rx6V7oLowxbJJTq.ntBfxTnqz9HO1GkwMZOgArnY0UN9VJy', '2024-11-09 12:21:53', 0),
(18, 'beggar@moum.com', 'beggar', '$2a$10$PeLoELFuasj6CptIePDM1.ronel7U5QRv532tHxDmXw.0.3TA6k9O', '2024-11-11 16:23:44', 0);



-- 상태 데이터
INSERT INTO collection_status (status_id, status_name) VALUES
(1, '미개봉' ),
(2, '사용감 없음'),
(3, '사용감 있음');


-- 수집품 데이터
INSERT INTO collection (collection_id, user_id, subcategory_id, name, status_id, purchase_date, purchase_place, price, storage_location) VALUES
(1, 2, 21, 'Lego City Police', 3, '2023-01-15', '레고 공식 스토어', 200000, '선반'),
(2, 2, 21, 'Lego City Fire Station', 1, '2023-01-16', '레고 공식 스토어', 165000, '집'),
(3, 2, 21, 'Lego City Delivery Truck', 2, '2023-02-09', '레고 중고 스토어', 200000, '창고'),
(4, 2, 21, 'Lego City Gulchak', 2, '2023-08-11', '레고 공식 스토어', 140000, '선반'),
(5, 2, 78, '나이키 에어맥스', 1, '2023-02-20', '나이키 매장', 150000, '신발장'),
(6, 2, 4, 'HG 건담 바바토스', 3, '2023-03-10', '건담베이스', 20000, '진열장'),
(7, 2, 61, '레고 밀레니엄 팔콘', 3, '2023-04-05', '레고 공식 스토어', 300000, '책상'),
(8, 2, 78, 'Nike Airmax2', 2, '2023-04-16', '당근', 180000, '신발장'),
(9, 2, 78, 'Nike Airmax3', 3, '2023-04-20', '나이키 매장', 150000, '신발장');


-- 게시글 데이터
-- INSERT INTO board (board_id, title, content, user_id, view_count, board_type) VALUES
-- (2, '레고 시티 경찰서 조립기', '첫 인상
-- 박스를 열었을 때 부품이 정말 많아서 흥미로웠습니다. 경찰서의 디테일한 구조가 기대되었습니다.

-- 조립 설명서
-- 설명서가 친절하게 되어 있어 초보자도 쉽게 따라할 수 있었습니다.

-- 분할 조립
-- 조립이 단계별로 나뉘어 있어 각 섹션을 완성하는 재미가 있었습니다.

-- 기초 바닥 조립
-- 먼저 바닥 부분을 조립하면서 전체 구조의 기초를 세우는 느낌이 좋았습니다.

-- 건물 벽체 조립
-- 벽체를 하나씩 세우면서 경찰서의 형태가 잡혀가는 모습이 흥미로웠습니다.

-- 디테일한 내부 구성
-- 내부에 작은 사무실, 감옥 등이 있어 더욱 리얼한 경찰서 느낌이 들었습니다.

-- 문과 창문 조립
-- 창문과 문을 조립하면서 완성도 높은 건물 느낌을 더해주었습니다.

-- 지붕 부분 조립
-- 지붕을 조립할 때 건물의 완성된 모습을 상상하며 즐거웠습니다.

-- 외부 장식 조립
-- 외부에 장식과 간판 등을 추가하면서 더욱 리얼한 느낌이 들었습니다.

-- 경찰차 조립
-- 경찰서 외에도 작은 경찰차를 조립하는 과정이 재미있었습니다.

-- 경찰차 디테일
-- 경찰차의 디테일한 조립 요소가 많아 작은 부분까지 신경 쓴 게 느껴졌습니다.

-- 캐릭터 조립
-- 경찰관과 범인 캐릭터를 조립하면서 더욱 생동감이 느껴졌습니다.

-- 감옥 세부 구성
-- 감옥 내부에 침대와 세부 장식이 있어 현실감을 더해줍니다.

-- 헬리콥터 착륙장 조립
-- 지붕 위에 헬리콥터 착륙장을 조립하면서 전체 경찰서가 완성되어 가는 느낌이 들었습니다.

-- 실내 소품 조립
-- 컴퓨터, 책상, 의자 등의 소품을 조립하는 과정이 정교하고 재미있었습니다.

-- 조립 후 정리
-- 모든 조립을 마친 후 남은 부품을 정리하고 완성된 경찰서를 감상했습니다.

-- 전체 구조 완성
-- 완성된 경찰서 건물을 보니 전체적인 구성이 매우 만족스러웠습니다.

-- 조립 소요 시간
-- 조립에는 약 5시간 정도가 걸렸고, 시간이 금방 지나갔습니다.

-- 재미 요소
-- 조립하는 내내 지루하지 않고 재미있게 조립할 수 있었습니다.

-- 부품의 질감
-- 부품의 질감이 좋아서 조립하는 내내 손에 닿는 느낌이 좋았습니다.

-- 조립의 난이도
-- 어린이도 할 수 있을 만큼 어렵지 않으면서도 성인이 해도 충분히 즐길 수 있었습니다.

-- 감옥 탈출 장치
-- 감옥에 탈출 장치가 있어 재미있는 상호작용 요소가 추가되었습니다.

-- 다양한 캐릭터
-- 여러 경찰관과 범인 캐릭터가 있어 역할극을 하며 놀기 좋았습니다.

-- 높은 완성도
-- 완성된 모습이 정말 멋있고, 레고의 퀄리티를 느낄 수 있었습니다.

-- 소장 가치
-- 경찰서 구조물과 캐릭터 덕분에 소장 가치가 높은 제품이라 생각됩니다.

-- 실제 건물 느낌
-- 실제 경찰서 건물을 축소한 듯한 느낌을 줘서 더욱 리얼했습니다.

-- 가성비
-- 가격 대비 조립 시간과 완성도를 고려했을 때 가성비가 좋다고 느꼈습니다.

-- 디테일한 소품들
-- 소품 하나하나가 정교하게 제작되어 전체적인 완성도를 높여줍니다.

-- 다양한 색상
-- 다양한 색상의 블록을 사용하여 생동감이 넘쳤습니다.

-- 아이와 함께 조립하기 좋음
-- 아이들과 함께 조립하기 좋은 제품으로 가족이 함께 즐길 수 있습니다.', 1, 100, "trade"),
-- (1, '나이키 에어맥스 리뷰', '첫 착용감
-- 에어맥스를 처음 신었을 때 발이 푹신하게 감싸는 느낌이 인상적이었습니다. 특히 발바닥을 지탱해주는 에어 쿠셔닝 덕분에 걷는 것이 훨씬 편안했습니다.

-- 디자인
-- 스포티하면서도 세련된 디자인이 마음에 들었습니다. 다양한 컬러 옵션 덕분에 어떤 스타일에도 쉽게 매치할 수 있었어요.

-- 통기성
-- 신발의 메쉬 소재 덕분에 통기성이 좋습니다. 오랜 시간 신어도 발이 덜 답답하게 느껴졌습니다.

-- 쿠셔닝
-- 에어맥스의 대표적인 에어 쿠셔닝은 정말 발을 편안하게 지탱해 줍니다. 특히 하루 종일 서 있거나 걷는 일이 많은 날에 아주 유용합니다.

-- 내구성
-- 생각보다 내구성이 좋아서 오래 신을 수 있습니다. 몇 달 동안 자주 신었지만 신발의 형태나 기능에 큰 변화가 없었습니다.

-- 가벼움
-- 무게가 가벼워서 장시간 착용해도 발이 덜 피곤해집니다.

-- 발목 지지력
-- 발목을 안정적으로 잡아주는 편이라 발이 흔들리지 않고 안전감을 줍니다.

-- 아웃솔 접지력
-- 비 오는 날에도 접지력이 뛰어나 미끄러짐 없이 안전하게 걸을 수 있었습니다.

-- 발볼 넓이
-- 발볼이 넓은 사람도 편안하게 착용할 수 있어요.

-- 가격 대비 만족도
-- 조금 비싼 가격이지만 품질과 편안함을 고려하면 충분히 만족스러운 제품입니다.

-- 다양한 스타일
-- 에어맥스는 캐주얼, 스포츠, 스트릿 등 다양한 스타일에 잘 어울립니다. 어떤 옷에도 매치하기 쉽습니다.

-- 매일 착용 가능
-- 매일 신어도 발에 무리가 가지 않아서 데일리 슈즈로 적합합니다.

-- 사이즈
-- 정 사이즈로 제작되어 사이즈 선택이 비교적 쉽습니다.

-- 착용 후 피로감 감소
-- 하루 종일 착용해도 발 피로가 덜해 퇴근 후에도 발이 편안합니다.

-- 뛰어난 반발력
-- 걷거나 뛸 때 반발력이 좋아 발이 튕겨지는 느낌이 들어 에너지를 아낄 수 있습니다.

-- 여름에도 시원함 유지
-- 통기성이 좋아 여름철에도 덜 덥고 쾌적하게 착용할 수 있습니다.

-- 어떤 발에도 적합
-- 발 아치가 낮거나 높은 사람도 편안하게 착용할 수 있어 다양한 발 모양에 잘 맞습니다.

-- 장시간 착용에도 형태 유지
-- 오랫동안 착용해도 신발의 형태가 쉽게 변하지 않습니다.

-- 패션 아이템으로도 손색 없음
-- 스타일리시한 디자인 덕분에 패션 아이템으로 활용하기에도 좋습니다.

-- 유연한 소재
-- 발 움직임에 맞춰 유연하게 변형되며 편안한 착용감을 줍니다.

-- 발냄새 줄여줌
-- 통기성이 좋아 발냄새가 덜 나서 쾌적함을 유지할 수 있습니다.

-- 피로감 없는 쿠셔닝
-- 장시간 걸어도 피로감이 덜 느껴지며 발을 편안하게 지탱해줍니다.

-- 다양한 용도
-- 운동뿐만 아니라 일상 생활에서도 다양하게 사용할 수 있습니다.

-- 빠른 건조
-- 습기에 강해 물에 젖어도 금방 건조됩니다.

-- 발을 포근하게 감싸줌
-- 발 전체를 포근하게 감싸주어 안정감이 느껴집니다.

-- ', 2, 50, "trade"),
-- (3, 'HG 건담 바바토스 조립 팁', '부품 분류하기
-- 조립을 시작하기 전에 부품을 설명서 순서대로 미리 분류해 두면 훨씬 수월하게 조립할 수 있습니다.

-- 런너 정리
-- 사용하지 않는 런너는 바로바로 정리해 작업 공간을 깔끔하게 유지하세요.

-- 조립 순서 확인
-- 설명서의 순서를 잘 따라가야 오류 없이 깔끔하게 조립할 수 있습니다.

-- 조립 시 힘 조절
-- HG 바바토스는 작은 부품이 많기 때문에 힘을 너무 세게 주면 부품이 부러질 수 있습니다.

-- 게이트 처리
-- 게이트 자국이 잘 보이지 않도록 커터나 니퍼를 사용해 정교하게 다듬어 주세요.

-- 사포 사용하기
-- 게이트 자국이 남아 있으면 400~600번 사포로 다듬어 매끄럽게 만들어 주세요.

-- 부품끼리의 간섭 주의
-- 바바토스의 부품은 간섭이 일어나기 쉬우니, 끼울 때 맞는 방향을 잘 확인하세요.

-- 관절 부품 조립
-- 관절 부분을 조립할 때 힘이 들어가지 않도록 부품을 정확히 맞춰서 끼우세요.

-- 폴리캡 사용
-- 폴리캡은 바바토스의 가동성을 높여주는 중요한 부품이니 정확히 맞춰 조립해야 합니다.

-- 관절 조립 순서
-- 관절은 조립 순서가 잘못되면 다시 분해하기 어려우니 꼭 설명서에 따라 조립하세요.

-- 무릎과 팔꿈치 가동성
-- 무릎과 팔꿈치 관절을 부드럽게 조립해 가동성을 최대한 확보하세요.

-- 팔 관절의 유격
-- 팔 관절이 헐거울 수 있으니 조립 시 유격이 생기지 않도록 조심하세요.

-- 무기 손잡이 부품
-- 무기를 쥐는 손의 손잡이 부분은 단단히 고정해야 자연스럽게 포즈를 취할 수 있습니다.

-- 머리 부품 조립
-- 머리 부분은 작은 부품이 많아서 조립 시 힘을 너무 주면 파손될 위험이 있습니다.

-- 스티커 위치 확인
-- 스티커는 위치가 조금만 어긋나도 어색할 수 있으니 신중하게 붙이세요.

-- 스티커 붙이기 팁
-- 핀셋을 사용해 스티커를 붙이면 더 정밀하게 작업할 수 있습니다.

-- 스티커 눌러주기
-- 붙인 후에 면봉이나 손톱으로 살짝 눌러 주면 더 깔끔하게 부착됩니다.

-- 가슴 장갑 조립
-- 가슴 장갑 부분은 틈새가 보이지 않도록 정확히 밀착하여 조립하세요.

-- 허리 파츠 조립
-- 허리 파츠는 조립 시 헐거워지지 않도록 고정력에 신경 써야 합니다.

-- 하체 무게 중심
-- 하체의 무게 중심이 잘 맞아야 포즈가 안정적으로 유지됩니다.

-- 발바닥 조립
-- 발바닥 파츠를 제대로 조립해야 바바토스가 서 있을 때 안정감을 줍니다.

-- 액션 포즈 대비
-- 가동성이 높은 모델이니 다양한 포즈를 시도하기 전에 관절이 단단히 고정됐는지 확인하세요.

-- 디테일 추가 작업
-- 펜을 사용해 디테일을 추가하면 더 멋진 바바토스를 완성할 수 있습니다.

-- 조립 후 분리 방지
-- 모든 부품이 잘 고정됐는지 다시 한번 확인하세요. 부품이 분리될 수 있습니다.

-- 장갑 조립 시 유격 확인
-- 장갑 파츠는 유격이 발생하기 쉬우니 조립 시 잘 맞춰서 끼우세요.

-- 부품 청소
-- 조립 전에 각 부품을 미리 깨끗하게 닦아주면 훨씬 깔끔하게 조립할 수 있습니다.

-- 상체와 하체 결합
-- 상체와 하체를 결합할 때에는 수평을 잘 맞춰서 조립하세요.

-- 관절 강화
-- 조립 후 헐거운 관절이 있다면 접착제를 살짝 발라서 보강할 수 있습니다.

-- 어깨 부품 조립
-- 어깨 부분은 움직임이 많아 파손되기 쉬우니 조심스럽게 다뤄 주세요.

-- 전체 균형 확인
-- 모델 전체의 균형이 잘 맞는지 확인해 포즈가 안정적으로 유지되는지 점검하세요.', 3, 200, "trade"),
-- (4, '레고 테크닉 그것이 알고 싶다', '레고 테크닉 정보 공유...', 1, 150, "trade"),
-- (5, '레고 스타워즈', '레고 스타워즈 제품 공유...', 1, 150, "general"),
-- (6, '레고 시티 소방서', '레고 시티 소방서 정보 공유...', 1, 150, "general"),
-- (7, '레고 마블', '레고 마블 신제품 공유...', 1, 150, "general"),
-- (8, '레고 dc', '레고 dc 정보 공유...', 1, 150, "general");


-- 거래 게시글 데이터
-- INSERT INTO trade_board (board_id, collection_id, price, status) VALUES
-- (1, 1, 20000, 1),
-- (2, 2, 40000, 0),
-- (3, null, 50000, 0),
-- (4, 3, 200000, 1);


-- 수집품게시글 데이터
-- INSERT INTO collection_board (board_id, collection_id) VALUES
-- (1, 1),
-- (2, 2),
-- (3, 3),
-- (4, 4);

-- INSERT INTO chatroom(chatroom_id, board_id, user_id) VALUES
-- (1, 7, 3),
-- (2, 7, 4),
-- (3, 8, 2),
-- (4, 8, 3),
-- (5, 8, 4);

-- INSERT INTO chat(chat_id, chatroom_id, user_id, message, chat_date, chat_read) VALUES
-- (1, 1, 1, "안녕하세요.", "2024-08-23 23:23:42", 1),
-- (2, 1, 3, "안녕하세요!!", "2024-08-23 23:23:56", 1),
-- (3, 1, 1, "구매하시나요?", "2024-08-23 23:24:41", 1),
-- (4, 1, 1, "참고로 싸게 올렸어요", "2024-08-23 23:25:16", 1),
-- (5, 1, 3, "구매할게요!", "2024-08-24 11:16:55", 1),
-- (6, 1, 1, "감사합니다", "2024-08-24 12:08:11", 1),
-- (7, 1, 3, "수고하세요", "2024-08-24 12:12:41", 1),
-- (8, 2, 1, "안녕하세요.", "2024-10-11 12:12:56", 1),
-- (9, 2, 4, "안녕하세요!!", "2024-10-11 12:13:16", 1),
-- (10, 2, 1, "구매하시나요?", "2024-10-11 12:13:23", 1),
-- (11, 2, 1, "참고로 싸게 올렸어요", "2024-10-11 12:13:47", 1),
-- (12, 2, 4, "좀만 싸게 해주세요!", "2024-10-11 12:14:08", 1),
-- (13, 2, 1, "에누리 안되는데", "2024-10-11 12:14:21", 1),
-- (14, 2, 4, "수고하세요", "2024-10-11 12:14:36", 1),
-- (15, 2, 1, "아 잠시", "2024-10-11 12:14:52", 1),
-- (16, 2, 1, "깎아드릴게요", "2024-10-11 12:15:02", 1),
-- (17, 2, 4, "고맙습니다~~~", "2024-10-11 12:15:08", 1),
-- (18, 2, 1, "언제 거래 가능하세요?", "2024-10-11 12:15:15", 1),
-- (19, 2, 4, "오늘 오후쯤 괜찮으세요?", "2024-10-11 12:15:20", 1),
-- (20, 2, 1, "네, 어디서 만나면 될까요?", "2024-10-11 12:15:25", 1),
-- (21, 2, 4, "강남역 근처에서 가능하신가요?", "2024-10-11 12:15:30", 1),
-- (22, 2, 1, "네, 그쪽으로 갈게요.", "2024-10-11 12:15:35", 1),
-- (23, 2, 4, "그럼 오늘 3시에 강남역 5번 출구에서 뵈어요.", "2024-10-11 12:15:40", 1),
-- (24, 2, 1, "네 알겠습니다. 그때 뵙겠습니다!", "2024-10-11 12:15:45", 1),
-- (25, 2, 4, "감사합니다~ 안전하게 오세요!", "2024-10-11 12:15:50", 1);

INSERT INTO collection_photo (photo_id, collection_id, filename, origin_filename) VALUES
(1, 1, "collection-image-1.png", "collection-image-1.png"),
(2, 2, "collection-image-2.png", "collection-image-2.png"),
(3, 3, "collection-image-3.png", "collection-image-3.png"),
(4, 4, "collection-image-4.png", "collection-image-4.png"),
(5, 2, "collection-image-5.png", "collection-image-5.png"),
(6, 2, "collection-image-6.png", "collection-image-6.png"),
(7, 7, "collection-image-7.png", "collection-image-7.png"),
(8, 7, "collection-image-8.png", "collection-image-8.png"),
(9, 8, "collection-image-9.png", "collection-image-9.png"),
(10, 1, "collection-image-10.png", "collection-image-10.png"),
(11, 5, "collection-image-11.png", "collection-image-11.png");

-- 댓글 데이터
-- INSERT INTO commentRequest (comment_id, user_id, board_id, content) VALUES
-- (1, 2, 1, '멋진 경찰서네요! 저도 갖고 싶어요.'),
-- (2, 3, 2, '에어맥스 편안해 보이네요. 저도 구매 고민 중이에요.'),
-- (3, 1, 3, '바바토스 조립 팁 감사합니다. 많은 도움이 될 것 같아요.'),
-- (4, 2, 4, '멋진 디스플레이네요! 공간 활용이 인상적입니다.');

-- 추천 데이터
-- INSERT INTO likes (board_id, user_id) VALUES
-- (1, 2),
-- (1, 3),
-- (2, 1),
-- (2, 3),
-- (3, 1),
-- (3, 2),
-- (4, 2),
-- (4, 3);


-- 회원 업적 데이터
-- INSERT INTO user_achievement (user_id, achievement_id, progress, get_date, current_count) VALUES
-- (1, 'FIRST_POST', 0, null, 0),
-- (1, 'COLLECTOR_NOVICE', 0, null, 0),
-- (1, 'LEGO_MASTER', 50, null, 5),
-- (1, 'SHOE_ENTHUSIAST', 20, null, 2),
-- (1, 'GUNDAM_PRO', 100, "2024-10-18 12:15:15", 10),
-- (2, 'FIRST_POST', 0, null, 1),
-- (2, 'COLLECTOR_NOVICE', 0, null, 1),
-- (2, 'LEGO_MASTER', 100, "2024-10-17 17:24:15", 10),
-- (2, 'SHOE_ENTHUSIAST', 20, null, 2),
-- (2, 'GUNDAM_PRO', 100, "2024-10-21 21:16:58", 1),
-- (3, 'FIRST_POST', 100, "2024-10-19 09:24:48", 1),
-- (3, 'COLLECTOR_NOVICE', 0, null, 0),
-- (3, 'LEGO_MASTER', 20, null, 2),
-- (3, 'SHOE_ENTHUSIAST', 60, null, 6),
-- (3, 'GUNDAM_PRO', 90, null, 9),
-- (4, 'FIRST_POST', 0, null, 0),
-- (4, 'COLLECTOR_NOVICE', 0, null, 0),
-- (4, 'LEGO_MASTER', 20, null, 2),
-- (4, 'SHOE_ENTHUSIAST', 100, "2024-10-14 16:42:08", 10),
-- (4, 'GUNDAM_PRO', 20, null, 2),
-- (5, 'FIRST_POST', 0, null, 0),
-- (5, 'COLLECTOR_NOVICE', 0, null, 0),
-- (5, 'LEGO_MASTER', 30, null, 3),
-- (5, 'SHOE_ENTHUSIAST', 90, null, 9),
-- (5, 'GUNDAM_PRO', 50, null, 5),
-- (6, 'FIRST_POST', 0, null, 0),
-- (6, 'COLLECTOR_NOVICE', 0, null, 0),
-- (6, 'LEGO_MASTER', 20, null, 2),
-- (6, 'SHOE_ENTHUSIAST', 80, null, 8),
-- (6, 'GUNDAM_PRO', 100, "2024-10-14 16:42:08", 10),
-- (7, 'FIRST_POST', 0, null, 0),
-- (7, 'COLLECTOR_NOVICE', 0, null, 0),
-- (7, 'LEGO_MASTER', 30, null, 3),
-- (7, 'SHOE_ENTHUSIAST', 90, null, 9),
-- (7, 'GUNDAM_PRO', 20, null, 2),
-- (8, 'FIRST_POST', 0, null, 0),
-- (8, 'COLLECTOR_NOVICE', 0, null, 0),
-- (8, 'LEGO_MASTER', 100, "2024-10-14 16:42:08", 10),
-- (8, 'SHOE_ENTHUSIAST', 90, null, 9),
-- (8, 'GUNDAM_PRO', 90, null, 9),
-- (9, 'FIRST_POST', 100, "2024-10-14 16:42:08", 1),
-- (9, 'COLLECTOR_NOVICE', 0, null, 0),
-- (9, 'LEGO_MASTER', 30, null, 3),
-- (9, 'SHOE_ENTHUSIAST', 20, null, 2),
-- (9, 'GUNDAM_PRO', 20, null, 2),
-- (10, 'FIRST_POST', 0, null, 0),
-- (10, 'COLLECTOR_NOVICE', 100, "2024-10-14 16:42:08", 1),
-- (10, 'LEGO_MASTER', 30, null, 3),
-- (10, 'SHOE_ENTHUSIAST', 90, null, 9),
-- (10, 'GUNDAM_PRO', 50, null, 5),
-- (11, 'FIRST_POST', 100, "2024-10-14 16:42:08", 1),
-- (11, 'COLLECTOR_NOVICE', 0, null, 0),
-- (11, 'LEGO_MASTER', 30, null, 3),
-- (11, 'SHOE_ENTHUSIAST', 90, null, 9),
-- (11, 'GUNDAM_PRO', 20, null, 2),
-- (12, 'FIRST_POST', 100, "2024-10-14 16:42:08", 1),
-- (12, 'COLLECTOR_NOVICE', 0, null, 0),
-- (12, 'LEGO_MASTER', 30, null, 3),
-- (12, 'SHOE_ENTHUSIAST', 90, null, 9),
-- (12, 'GUNDAM_PRO', 20, null, 2),
-- (13, 'FIRST_POST', 0, null, 0),
-- (13, 'COLLECTOR_NOVICE', 0, null, 0),
-- (13, 'LEGO_MASTER', 100, "2024-10-14 16:42:08", 10),
-- (13, 'SHOE_ENTHUSIAST', 90, null, 9),
-- (13, 'GUNDAM_PRO', 20, null, 2),
-- (14, 'FIRST_POST', 0, null, 0),
-- (14, 'COLLECTOR_NOVICE', 0, null, 0),
-- (14, 'LEGO_MASTER', 30, null, 3),
-- (14, 'SHOE_ENTHUSIAST', 90, null, 9),
-- (14, 'GUNDAM_PRO', 100, "2024-10-14 16:42:08", 10),
-- (15, 'FIRST_POST', 0, null, 0),
-- (15, 'COLLECTOR_NOVICE', 100, "2024-10-14 16:42:08", 1),
-- (15, 'LEGO_MASTER', 30, null, 3),
-- (15, 'SHOE_ENTHUSIAST', 90, null, 9),
-- (15, 'GUNDAM_PRO', 20, null, 2),
-- (16, 'FIRST_POST', 100, "2024-10-14 16:42:08", 1),
-- (16, 'COLLECTOR_NOVICE', 100, "2024-10-14 16:42:08", 1),
-- (16, 'LEGO_MASTER', 100, "2024-10-14 16:42:08", 10),
-- (16, 'SHOE_ENTHUSIAST', 90, null, 9),
-- (16, 'GUNDAM_PRO', 20, null, 2),
-- (17, 'FIRST_POST', 0, null, 0),
-- (17, 'COLLECTOR_NOVICE', 0, null, 0),
-- (17, 'LEGO_MASTER', 30, null, 3),
-- (17, 'SHOE_ENTHUSIAST', 90, null, 9),
-- (17, 'GUNDAM_PRO', 100, "2024-10-14 16:42:08", 10);

-- 게시글 태그 데이터
-- INSERT INTO board_tag (board_id, tag_name) VALUES
-- (1, '레고'),
-- (1, '시티'),
-- (1, '조립'),
-- (2, '나이키'),
-- (2, '에어맥스'),
-- (2, '운동화'),
-- (3, '건담'),
-- (3, 'HG'),
-- (3, '조립'),
-- (4, '레고'),
-- (4, '스타워즈'),
-- (4, '디스플레이');

-- 신고 카테고리 데이터
INSERT INTO report_category (report_category_id, category_name) VALUES
(1, '스팸'),
(2, '부적절한 콘텐츠'),
(3, '저작권 침해'),
(4, '혐오 발언');

-- 신고 처리 유형 데이터
INSERT INTO report_result_category (report_result_id, result_name) VALUES
(1, '경고'),
(2, '게시물 삭제'),
(3, '계정 정지'),
(4, '신고 기각');

-- 신고 데이터
-- INSERT INTO report (report_id, user_id, report_content, report_date, report_category_id) VALUES
-- (1, 4, "<a href='/board/boardView?no=4'>재미없어요</a>", "2024-10-17 12:13:16", 2),
-- (2, 5, "<a href='/board/boardView?no=4'>노잼</a>", "2024-10-18 16:42:16", 2);

-- 알림 데이터
-- INSERT INTO alert (user_id, alert_content, alert_date, alert_read, alert_category, alert_category_id) VALUES
-- (2, "게시글이 등록되었습니다.", "2024-10-6 12:13:16", 1, "board", 1),
-- (2, "게시글이 등록되었습니다.", "2024-10-8 13:13:16", 1, "board", 1),
-- (2, "게시글이 등록되었습니다.", "2024-10-8 14:13:16", 1, "board", 1),
-- (2, "게시글이 등록되었습니다.", "2024-10-9 15:13:16", 1, "board", 1),
-- (2, "게시글이 등록되었습니다.", "2024-10-10 12:13:16", 1, "board", 1),
-- (2, "게시글이 등록되었습니다.게시글이 등록되었습니다.", "2024-10-10 13:13:16", 1, "board", 1),
-- (2, "게시글이 등록되었습니다.", "2024-10-10 14:13:16", 0, "board", 2),
-- (2, "게시글이 등록되었습니다.", "2024-10-10 15:13:16", 0, "board", 2),
-- (2, "게시글이 등록되었습니다.", "2024-10-11 12:13:16", 0, "board", 2),
-- (2, "게시글이 등록되었습니다.게시글이 등록되었습니다.게시글이 등록되었습니다.게시글이 등록되었습니다.", "2024-10-11 13:13:16", 0, "board", 2),
-- (2, "게시글이 등록되었습니다.", "2024-10-11 14:13:16", 0, "board", 2),
-- (2, "게시글이 등록되었습니다.", "2024-10-11 15:13:16", 0, "board", 2);

-- 금지어 유형 데이터
INSERT INTO forbidden_word (word) VALUES
('시바'),
('병신'),
('버러지'),
('운지');
