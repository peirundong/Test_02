package service.DictionaryService;

import dao.DictionaryDao.DictionaryMapper;
import org.springframework.stereotype.Service;
import pojo.HxDictionary;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by 东魏 on 2017/12/4.
 */
@Service
public class DictionaryServiceIpml implements DictionaryService {
    @Resource
    private DictionaryMapper dictionaryMapper;
    public List<HxDictionary> selcetDictionary(String typeName){
        List<HxDictionary> dictionary=dictionaryMapper.selcetDictionary(typeName);
        return dictionary;
    }
}
