package com.amaker.util;

import org.apache.commons.beanutils.BeanUtils;

import java.lang.reflect.InvocationTargetException;
import java.util.Map;

public class MyBeanUtils{

    public static  Object populate(Class cls, Map map) {
        try {
            Object obj = cls.newInstance();
            System.out.println(obj.getClass().getName());
            BeanUtils.populate(obj,map);
            return obj;
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        return  null;
    }
}
