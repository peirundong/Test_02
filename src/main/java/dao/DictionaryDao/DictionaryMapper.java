package dao.DictionaryDao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import pojo.HxDictionary;

import java.util.List;

/**
 * Created by 东魏 on 2017/12/4.
 */
@Repository
public interface DictionaryMapper {
    List<HxDictionary> selcetDictionary(@Param("typename") String typename);
}
