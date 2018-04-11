package dao.ResumeNotificationDao;

import org.springframework.stereotype.Repository;
import pojo.HxResumeNotification;

import java.util.List;

/**
 * Created by Nano on 2017/12/7.
 */
@Repository
public interface ResumeNotificationMapper {
    List<HxResumeNotification> showAllResumeNotificationInfo(int seekerid);
}
