package com.buxz.online_exam.base;

import com.buxz.online_exam.util.PropertiesLoader;
import org.apache.commons.lang3.StringUtils;

import java.util.HashMap;
import java.util.Map;

public class Global {

    private static Global global = new Global();

    private static Map<String, String> map = new HashMap<>();

    private static PropertiesLoader loader = new PropertiesLoader("application.properties");

    // 单列模式
    public static Global getInstance() {
        return global;
    }

    public static String getConfig(String key) {
        String value = map.get(key);
        if (value == null) {
            value = loader.getProperty(key);
            map.put(key, value != null ? value : StringUtils.EMPTY);
        }
        return value;
    }

}
