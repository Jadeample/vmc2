package com.amaker.util;

import com.alibaba.druid.pool.DruidDataSourceFactory;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

public class DruidUtil {
    private static DataSource dataSource;
    private static Connection  conn;

    static {
        Properties p = new Properties();
        try {
            p.load(DruidUtil.class.getClassLoader().getResourceAsStream("jdbc.properties"));
            dataSource = DruidDataSourceFactory.createDataSource(p);
        } catch (Exception e) {
            System.out.println(e);
        }
    }

        public  static Connection getConn(){
            try {
                conn = dataSource.getConnection();
                System.out.println(conn);
                return conn;
            } catch (SQLException e) {
                System.out.println(e);
            }
            return null;
        }
    public static  void close(){
        try {
            conn.close();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

}
