package service.SearchForSeekerService;

import dao.ForSeekerDao.ForSeekerMapper;
import org.springframework.stereotype.Service;
import pojo.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Tonight on 2017/12/4.
 */
@Service
public class SearchForSeekerServiceImpl implements SearchForSeekerService{

    @Resource
    private ForSeekerMapper forseekerMapper;
    public List<HxCompanyRecruit> selectCR(String kd) {

        return forseekerMapper.selectCR(kd);
    }

    public List<HxCompanyRecruit> selectCRS(String xuanze) {
        return forseekerMapper.selectCRA(xuanze);
    }

    public HxSeeker seekerInfo(Integer id) {
        return forseekerMapper.selectSeekerInfo(id);
    }

    /*public Integer datea(Integer id,String resumeName) {
        return forseekerMapper.datea(id,resumeName);
    }*/

    public boolean dateb(String tel, String email, String names, Integer id) {
        return forseekerMapper.dateb(tel,email,names,id);
    }

    public boolean inserta(String name, Integer newSex, Integer age, String email, Integer newOftenuse, Integer seekerid) {
        return forseekerMapper.insertA(name,newSex,age,email,newOftenuse,seekerid);
    }

    public boolean insertb(Integer xueLi, String guoji, String langele, String jinyan,Integer seekerid) {
        return forseekerMapper.insertB(xueLi,guoji,langele,jinyan,seekerid);
    }

    public List<HxCollection> infohcr(Integer seekerid) {
        return forseekerMapper.lookSKcoll(seekerid);
    }

    public List<HxCompany> infocom(Integer companyid) {
        return forseekerMapper.infocom(companyid);
    }

    public Integer lookAddress(String addressA) {
        return forseekerMapper.lookAddress(addressA);
    }

    public boolean insertc(Integer newAddress, String zhiwei, String xinzi, Integer seekerid) {
        return forseekerMapper.insertC(newAddress,zhiwei,xinzi,seekerid);
    }

    public boolean insertd(String jineng, String miaoshu, Integer seekerid) {
        return forseekerMapper.insertD(jineng,miaoshu,seekerid);
    }

    public int getSeekerCount(String zhiwei) {
        return forseekerMapper.getCountPage(zhiwei);
    }

    public List<HxCompanyRecruit> selectPage(String xinzi, Integer xueli, String time, int ipageNo, int pageSize,String zhiwei) {
        return forseekerMapper.pageLook(xinzi,xueli,time,ipageNo,pageSize,zhiwei);
    }

    public boolean delColl(Integer id) {
        return forseekerMapper.delColl(id);
    }


}
