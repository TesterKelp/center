package com.testsystem.exception;


import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.ExceptionHandler;
public class BaseController {
    /** 基于@ExceptionHandler异常处理 */
    @ExceptionHandler
    public String exception(HttpServletRequest request, Exception ex) {
        request.setAttribute("ex", ex);
        // 根据不同错误转向不同页面，即异常与view的对应关系
        if (ex instanceof SQLException) {
            return "sql-error";
        } else if (ex instanceof MyException) {
            return "my-error";
        } else {
            return "error";
        }
    }
}