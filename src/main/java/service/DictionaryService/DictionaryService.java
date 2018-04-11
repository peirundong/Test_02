package service.DictionaryService;

import pojo.HxDictionary;

import java.util.List;

/**
 * Created by 东魏 on 2017/12/4.
 */
public interface DictionaryService {
    List<HxDictionary> selcetDictionary(String typeName);
}
