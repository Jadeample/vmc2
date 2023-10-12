package com.amaker.dao;

import com.amaker.util.JdbcUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class BaseDao {
    //使用DBUtil工具类实现基本的CRUD
    QueryRunner  queryRunner= new QueryRunner();

    /**
     * update 用来执行对数据库的insert  update delete操作
     * @param sql
     * @param args
     * @return 如果返回-1 则表示更新失败
     */
    public int update(String sql,Object...args){
        Connection connection = JdbcUtil.getConnection();

        try {
           return  queryRunner.update(connection,sql,args);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtil.close(connection);
        }
        return -1;
    }

    /**
     * 查询单个对象
     * @param type 查询对象的类型
     * @param sql
     * @param args
     * @return  如果返回null则么有查到该对象
     */
    public <T> T getOneObject(Class<T> type ,String sql,Object...args){
        Connection connection = JdbcUtil.getConnection();

       try {
           return  queryRunner.query(connection,sql,new BeanHandler<T>(type),args);
       } catch (Exception e) {
           e.printStackTrace();
       } finally {
           JdbcUtil.close(connection);
       }
       return null;
   }

    /**
     * 查询多个对象
     * @param type 查询对象的类型
     * @param sql
     * @param args
     * @return
     */
   public <T> List<T> getObjects(Class<T> type ,String sql,Object...args){
       Connection connection = JdbcUtil.getConnection();
       try {
           return  queryRunner.query(connection,sql,new BeanListHandler<T>(type),args);
       } catch (Exception e) {
           e.printStackTrace();
       } finally {
           JdbcUtil.close(connection);
       }
       return null;
   }

    /**
     * 查询单个值
     * @param sql
     * @param args
     * @return
     */
 public  Number getScalarValue(String sql,Object...args){
        Connection connection = JdbcUtil.getConnection();
    try {
        return  (Number)queryRunner.query(connection, sql, new ScalarHandler(), args);
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        JdbcUtil.close(connection);
    }
    return null;

}

//    public static void main(String[] args) {
//
//        System.out.println(23323);
//    }
}
