package moum.project.service;

import java.util.List;
import moum.project.vo.Alert;
import org.apache.ibatis.annotations.Param;

public interface AlertService {
  boolean add(Alert alert) throws Exception;

  List<Alert> listByUser(
      @Param("userNo") int userNo,
      @Param("pageNo") int pageNo,
      @Param("pageCount") int pageCount
  ) throws Exception;

  boolean updateTime(int no) throws Exception;

  boolean updateRead(int no) throws Exception;

  boolean updateReadAll(int userNo) throws Exception;

  boolean updateReadByCategoryAndUser(Alert alert) throws Exception;

  boolean delete(int no) throws Exception;

  int exists(Alert alert) throws Exception;

  int countUnreadByUser(int no) throws Exception;
}
