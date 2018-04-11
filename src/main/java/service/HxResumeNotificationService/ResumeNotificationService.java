package service.HxResumeNotificationService;

import pojo.HxResumeNotification;

import java.util.List;

/**
 * Created by Nano on 2017/12/7.
 */
public interface ResumeNotificationService {
    List<HxResumeNotification> showAllResumeNotificationInfo(int seekerid);
}
