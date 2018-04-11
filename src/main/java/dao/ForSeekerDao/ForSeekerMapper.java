package dao.ForSeekerDao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import pojo.*;

import java.util.List;

/**
 * Created by Tonight on 2017/12/4.
 */
@Repository
public interface ForSeekerMapper {

    List<HxCompanyRecruit> selectCR(@Param("kd") String kd);//主页查询接口

    HxSeeker selectSeekerInfo(@Param("id") Integer id);//id查询用户信息

    /*Integer datea(@Param("id") Integer id,@Param("resumeName") String resumeName);//修改用户名字*/

    boolean dateb(@Param("tel") String tel, @Param("email") String email, @Param("names") String names, @Param("id") Integer id);//修改用户详细

    boolean insertA(@Param("name") String name, @Param("newSex") Integer newSex, @Param("age") Integer age,
                    @Param("email") String email, @Param("newOftenuse") Integer newOftenuse, @Param("seekerid") Integer seekerid);//添加我的信息信息

    boolean insertB(@Param("xueLi") Integer xueLi, @Param("guoji") String guoji,
                    @Param("langele") String langele, @Param("jinyan") String jinyan, @Param("seekerid") Integer seekerid);//添加我的优势信息

    List<HxCollection> lookSKcoll(@Param("seekerid") Integer seekerid);

    List<HxCompany> infocom(@Param("companyid") Integer companyid);

    Integer lookAddress(@Param("addressA") String addressA);

    boolean insertC(@Param("newAddress") Integer newAddress, @Param("zhiwei") String zhiwei,
                    @Param("xinzi") String xinzi, @Param("seekerid") Integer seekerid);

    boolean insertD(@Param("jineng") String jineng, @Param("miaoshu") String miaoshu, @Param("seekerid") Integer seekerid);

    Integer getCountPage(@Param("zhiwei") String zhiwei);

    List<HxCompanyRecruit> pageLook(@Param("xinzi") String xinzi, @Param("xueli") Integer xueli,
                                    @Param("time") String time, @Param("ipageNo") int ipageNo, @Param("pageSize") int pageSize,
                                    @Param("zhiwei") String zhiwei);

    boolean delColl(@Param("id") Integer id);

    List<HxCompanyRecruit> selectCRA(@Param("xuanze") String xuanze);
}