package com.testsystem.exception;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestExceptionController {
    @Autowired
    private TestExceptionService testExceptionService;
    @RequestMapping("/db.do")
    public void db() throws Exception {
        throw new SQLException("控制器中数据库异常");
    }
    @RequestMapping("/my.do")
    public void my() throws Exception {
        throw new MyException("控制器中自定义异常");
    }
    @RequestMapping("/no.do")
    public void no() throws Exception {
        throw new Exception("控制器中未知异常");
    }
    
    
    @RequestMapping("/servicedb.do")
    public void servicedb() throws Exception {
        testExceptionService.servicedb();
    }
    @RequestMapping("/servicemy.do")
    public void servicemy() throws Exception {
        testExceptionService.servicemy();
    }
    @RequestMapping("/serviceno.do")
    public void serviceno() throws Exception {
        testExceptionService.serviceno();
    }
    
    
    @RequestMapping("/daodb.do")
    public void daodb() throws Exception {
        testExceptionService.daodb();
    }
    @RequestMapping("/daomy.do")
    public void daomy() throws Exception {
        testExceptionService.daomy();
    }
    @RequestMapping("/daono.do")
    public void daono() throws Exception {
        testExceptionService.daono();
    }
}
