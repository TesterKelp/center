package com.testsystem.quanxian.exception;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Administrator on 2015/10/10 0010.
 */
public class CustomExceptionResolver implements HandlerExceptionResolver {
    //handler :������Ҫִ�е�handler������handlerMethod
    //ex:�쳣��Ϣ
    public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response,
                                         Object handler, Exception ex) {
        //����쳣
        ex.printStackTrace();
         //ͳһ�쳣����
        String message=null;
        CustomException customException=null;
        if(ex instanceof  CustomException){
            //ͳһ�쳣: ������ȫ�����
            customException=(CustomException)ex;
            message=customException.getMessage();
        }else{
            //δ֪�쳣: ������ȫ�����
             customException=new  CustomException("��ϲ�㣬������콱���㷢�����©��,��ϵ�ͷ���400");
        }
        request.setAttribute("message",message);
        try {
            //����ҳ��
            request.getRequestDispatcher("/pages/jsp/error.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return new ModelAndView();
    }
}