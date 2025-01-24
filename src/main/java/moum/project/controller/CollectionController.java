package moum.project.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import lombok.RequiredArgsConstructor;
import moum.project.service.CollectionCategoryService;
import moum.project.service.CollectionService;
import moum.project.service.CollectionStatusService;
import moum.project.service.StorageService;
import moum.project.service.UserService;
import moum.project.vo.AttachedFile;
import moum.project.vo.Collection;
import moum.project.vo.CollectionStatus;
import moum.project.vo.Maincategory;
import moum.project.vo.Subcategory;
import moum.project.vo.User;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/collection")
@RequiredArgsConstructor
public class CollectionController {

  private final CollectionService collectionService;
  private final CollectionCategoryService categoryService;
  private final CollectionStatusService statusService;
  private final StorageService storageService;
  private final UserService userService;

  private final String folderName = "collection/";


  @GetMapping("/get")
  @ResponseBody
  public Collection get(int no) throws Exception {
    return collectionService.get(no);
  }


  @GetMapping("/form")
  public String form(Model model) throws Exception {
    List<Maincategory> maincategoryList = categoryService.listMaincategory();
    List<CollectionStatus> collectionStatusList = statusService.list();

    model.addAttribute("maincategoryList", maincategoryList);
    model.addAttribute("collectionStatusList", collectionStatusList);

    return "collection/form";
  }

  @PostMapping("/add")
  @ResponseBody
  public String add(
      Collection collection,
      MultipartFile[] files,
      @AuthenticationPrincipal UserDetails userDetails) throws Exception {

    if (userDetails == null) {
      return "login";
    }

    if (!validateColletion(collection)) {
      return "failure";
    }

    String email = userDetails.getUsername();
    User loginUser = userService.getByEmail(email);

    collection.setUser(loginUser);

    List<AttachedFile> attachedFiles = new ArrayList<>();

    if (files != null) {
      for (MultipartFile file : files) {
        if (file.getSize() == 0) {
          continue;
        }

        AttachedFile attachedFile = new AttachedFile();
        attachedFile.setFileCategory(AttachedFile.COLLECTION);
        attachedFile.setFilename(UUID.randomUUID().toString());
        attachedFile.setOriginFilename(file.getOriginalFilename());

        Map<String, Object> options = new HashMap<>();
        options.put(StorageService.CONTENT_TYPE, file.getContentType());

        storageService.upload(
            folderName + attachedFile.getFilename(),
            file.getInputStream(),
            options);

        attachedFiles.add(attachedFile);
      }
    }

    collection.setAttachedFiles(attachedFiles);

    if (collectionService.add(collection)) {
      return "success";
    }
    return "failure";
  }

  @GetMapping("/list")
  @ResponseBody
  public List<Collection> list(@AuthenticationPrincipal UserDetails userDetails) throws Exception {
    String email = userDetails.getUsername();
    User loginUser = userService.getByEmail(email);
    return collectionService.list(loginUser.getNo());
  }

  @GetMapping("/view")
  public String view(int no, Model model) throws Exception {
    Collection collection = collectionService.get(no);
    List<Maincategory> maincategoryList = categoryService.listMaincategory();
    List<Subcategory> subcategoryList = categoryService.listSubcategory(collection.getMaincategory().getNo());
    List<CollectionStatus> collectionStatusList = statusService.list();

    model.addAttribute("collection", collection);
    model.addAttribute("maincategoryList", maincategoryList);
    model.addAttribute("subcategoryList", subcategoryList);
    model.addAttribute("collectionStatusList", collectionStatusList);

    return "collection/view";
  }

  @GetMapping("/viewFromBoard")
  public String viewFromBoard(int no, Model model) throws Exception {
    Collection collection = collectionService.get(no);
    List<Maincategory> maincategoryList = categoryService.listMaincategory();
    List<Subcategory> subcategoryList = categoryService.listSubcategory(collection.getMaincategory().getNo());
    List<CollectionStatus> collectionStatusList = statusService.list();

    model.addAttribute("collection", collection);
    model.addAttribute("maincategoryList", maincategoryList);
    model.addAttribute("subcategoryList", subcategoryList);
    model.addAttribute("collectionStatusList", collectionStatusList);

    return "collection/viewFromBoard";
  }

  @PutMapping("/update")
  @ResponseBody
  public String update(
      Collection collection,
      MultipartFile[] files,
      @AuthenticationPrincipal UserDetails userDetails) throws Exception {

    if (userDetails == null) {
      return "login";
    }

    if (!validateColletion(collection)) {
      return "failure";
    }

    String email = userDetails.getUsername();
    User loginUser = userService.getByEmail(email);

    if (loginUser.getNo() != collectionService.get(collection.getNo()).getUser().getNo()) {
      throw new Exception("타인의 수집품을 수정할 수 없습니다.");
    }

    List<AttachedFile> attachedFiles = new ArrayList<>();

    if (files != null) {
      for (MultipartFile file : files) {
        if (file.getSize() == 0) {
          continue;
        }

        AttachedFile attachedFile = new AttachedFile();
        attachedFile.setFileCategory(AttachedFile.COLLECTION);
        attachedFile.setFilename(UUID.randomUUID().toString());
        attachedFile.setOriginFilename(file.getOriginalFilename());

        Map<String, Object> options = new HashMap<>();
        options.put(StorageService.CONTENT_TYPE, file.getContentType());

        storageService.upload(
            folderName + attachedFile.getFilename(),
            file.getInputStream(),
            options);

        attachedFiles.add(attachedFile);
      }
    }

    collection.setAttachedFiles(attachedFiles);

    if (collectionService.update(collection)) {
      return "success";
    }
    return "failure";
  }


  @DeleteMapping("/delete")
  @ResponseBody
  public String delete(
      int no,
      @AuthenticationPrincipal UserDetails userDetails) throws Exception {

    if (userDetails == null) {
      return "login";
    }

    String email = userDetails.getUsername();
    User loginUser = userService.getByEmail(email);

    Collection collection = collectionService.get(no);

    if (loginUser.getNo() != collection.getUser().getNo()) {
      throw new Exception("타인의 수집품을 삭제할 수 없습니다.");
    }

    for (AttachedFile attachedFile : collection.getAttachedFiles()) {
      storageService.delete(folderName + attachedFile.getFilename());
    }

    if (collectionService.delete(no)) {
      return "success";
    }
    return "failure";
  }



  @DeleteMapping("/deleteFile")
  @ResponseBody
  public String deleteFile(
      int no,
      @AuthenticationPrincipal UserDetails userDetails) throws Exception {

    if (userDetails == null) {
      return "login";
    }

    String email = userDetails.getUsername();
    User loginUser = userService.getByEmail(email);

    Collection collection = collectionService.getByFileNo(no);

    if (loginUser.getNo() != collection.getUser().getNo()) {
      throw new Exception("타인의 수집품을 삭제할 수 없습니다.");
    }

    AttachedFile attachedFile = collectionService.getAttachedFile(no);
    storageService.delete(folderName + attachedFile.getFilename());
    if (collectionService.deleteFile(no)) {
      return "success";
    }
    return "failure";
  }

  private boolean validateColletion(Collection collection) {
    if (collection.getName().trim().isEmpty()) {return false;}
    if (collection.getStatus().getNo() == 0) {return false;}
    if (collection.getMaincategory().getNo() == -999 && collection.getOtherCategory().isEmpty()) {return false;}
    return true;
  }

  @GetMapping("/subcategory/list")
  @ResponseBody
  public List<Subcategory> list(int maincategoryNo) throws Exception {
    return categoryService.listSubcategory(maincategoryNo);
  }

  @PostMapping("/subcategory/add")
  @ResponseBody
  public String addSubcategory(Subcategory subcategory) throws Exception {

    if (categoryService.getSubcategoryByName(subcategory.getName()) != null) {
      return "exist";
    }

    if (categoryService.addSubcategory(subcategory)) {
      return "success";
    }
    return "failure";
  }

  @PostMapping("/maincategory/add")
  @ResponseBody
  public String addMaincategory(Maincategory maincategory) throws Exception {

    if (categoryService.getMaincategoryByName(maincategory.getName()) != null) {
      return "exist";
    }

    if (maincategory.getName().length() > 7) {
      return "overSeven";
    }

    if (categoryService.addMaincategory(maincategory)) {
      return "success";
    }
    return "failure";
  }

  @GetMapping("/setPrimaryPhoto")
  @ResponseBody
  public String setPrimaryPhoto(int collectionNo, int fileNo) throws Exception {
    Collection collection = collectionService.get(collectionNo);
    List<AttachedFile> attachedFileList = collection.getAttachedFiles();

    Iterator<AttachedFile> iterator = attachedFileList.iterator();
    while (iterator.hasNext()) {
      AttachedFile attachedFile = iterator.next();
      if (attachedFile.getNo() == fileNo) {
        iterator.remove(); // 안전하게 제거
      }
    }

    if (collectionService.setPrimaryPhoto(collection, fileNo)) {
      return "success";
    }
    return "failure";
  }

}
