package moum.project.service;

import java.util.List;
import moum.project.dao.ReportDao;
import moum.project.vo.Report;
import moum.project.vo.ReportCategory;
import moum.project.vo.ReportResultCategory;
import org.springframework.stereotype.Service;

@Service
public class DefaultReportService implements ReportService {

  private final ReportDao reportDao;

  public DefaultReportService(ReportDao reportDao) {
    this.reportDao = reportDao;
  }

  @Override
  public boolean add(Report report) throws Exception {
    return reportDao.insert(report);
  }

  public List<Report> list() throws Exception {
    return reportDao.list();
  }

  @Override
  public List<Report> listByPage(Report report, int pageNo, int pageCount) throws Exception {
    return reportDao.listByPage(report, pageNo, pageCount);
  }

  @Override
  public List<ReportCategory> listReportCategories() throws Exception {
    return reportDao.listReportCategories();
  }

  @Override
  public List<ReportResultCategory> listResultCategories() throws Exception {
    return reportDao.listResultCategories();
  }

  @Override
  public Report get(int no) throws Exception {
    return reportDao.findBy(no);
  }

  @Override
  public boolean update(Report report) throws Exception {
    return false;
  }

  @Override
  public boolean updateResult(Report report) throws Exception {
    return reportDao.updateResult(report);
  }

  @Override
  public boolean delete(int no) throws Exception {
    return false;
  }

  @Override
  public int count(Report report) throws Exception {
    return reportDao.count(report);
  }
}
