package service.SearchForSeekerService;

import org.springframework.stereotype.Service;
import pojo.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Tonight on 2017/12/4.
 */
@Service
public interface SearchForSeekerService {
    List<HxCompanyRecruit> selectCR(String kd);//主页查询接口

    List<HxCompanyRecruit> selectCRS(String xuanze);

    HxSeeker seekerInfo(Integer id);//id查看用户详细信息

   /* Integer datea(Integer id,String resumeName);*///修改用户姓名

    boolean dateb(String tel, String email, String names, Integer id);//修改用户详细

    boolean inserta(String name, Integer newSex, Integer age, String email, Integer newOftenuse, Integer seekerid);//添加我的信息信息

    boolean insertb(Integer xueLi, String guoji, String langele, String jinyan, Integer seekerid);//添加我的优势信息

    List<HxCollection> infohcr(Integer seekerid);//查询该用户收藏的公司id

    List<HxCompany> infocom(Integer companyid);//查询我的收藏的公司信息（所有）

    Integer lookAddress(String addressA);//根据输入地址名字，查询地址编号

    boolean insertc(Integer newAddress, String zhiwei, String xinzi, Integer seekerid);//添加期望工作框

    boolean insertd(String jineng, String miaoshu, Integer seekerid);//添加自我评价框

    int getSeekerCount(String zhiwei);//查询所有招聘信息的行数

    List<HxCompanyRecruit> selectPage(String xinzi, Integer xueli, String time, int ipageNo, int pageSize, String zhiwei);//多条件分页查询

    boolean delColl(Integer id);//删除收藏的公司


}
