package service.HxResumeNotificationService;

import dao.ResumeNotificationDao.ResumeNotificationMapper;
import org.springframework.stereotype.Service;
import pojo.HxResumeNotification;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Nano on 2017/12/7.
 */
@Service
public class ResumeNotificationServiceImpl implements ResumeNotificationService {
    @Resource
    private ResumeNotificationMapper rnMapper;
    public List<HxResumeNotification> showAllResumeNotificationInfo(int seekerid) {
        return rnMapper.showAllResumeNotificationInfo(seekerid);
    }
}
