package tools;

import redis.clients.jedis.Jedis;

/**
 * Created by 东魏 on 2017/12/8.
 */
public class RedisUtil {
    static Jedis jedis=new Jedis("localhost");
    public static void setJedis(String name,String value){
        jedis.set(name,value);
    }
    public static String getJedis(String name){
         return jedis.get(name);
    }
}
