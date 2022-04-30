package com.testsystem.exception;

import java.sql.SQLException;
import org.springframework.stereotype.Repository;
@Repository("TestExceptionDao")
public class TestExceptionDao {
    public void daodb() throws Exception {
        throw new SQLException("Dao中数据库异常");
    }
    public void daomy() throws Exception {
        throw new SQLException("Dao中自定义异常");
    }
    public void daono() throws Exception {
        throw new SQLException("Dao中未知异常");
    }
}