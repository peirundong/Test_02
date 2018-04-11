package dao.SeekerDao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import pojo.HxSeeker;

/**
 * Created by Aaron on 2017/12/4.
 */
@Repository
public interface SeekerMapper {
    int addSeeker(HxSeeker hxSeeker);

    HxSeeker getSeekerLogin(@Param("seekerphone") String seekerphone);

    int getInt(@Param("phone")String phone);
}
