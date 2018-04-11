package service.SeekerService;

import dao.SeekerDao.SeekerMapper;
import org.springframework.stereotype.Service;
import pojo.HxSeeker;

import javax.annotation.Resource;

/**
 * Created by Aaron on 2017/12/4.
 * 公司service
 */

@Service
public class SeekerServiceImpl implements SeekerService{

    @Resource
    private SeekerMapper seekerMapper;
    /**
     * 注册
     * @param hxSeeker
     * @return
     */
    public int registerSeeker(HxSeeker hxSeeker) {
        return seekerMapper.addSeeker(hxSeeker);
    }
    /**
     * 登录
     * @param seekerphone
     * @param seekerpwd
     * @return
     */
    public HxSeeker login(String seekerphone, String seekerpwd){
        HxSeeker hxSeeker= seekerMapper.getSeekerLogin(seekerphone);
        if (hxSeeker.getSeekerpwd().equals(seekerpwd)){
            return hxSeeker;
        }else {
            return null;
        }
    }
    public int getInt(String phone){
        int count=seekerMapper.getInt(phone);
        return count;
    }
}
