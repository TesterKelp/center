package com.testsystem.ad.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.testsystem.backstage.vo.Item;
import com.testsystem.helper.JsonAndString;

import net.sf.json.JSONObject;

import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/** SSE 服务器发送事件
 */
@Controller
public class SSEController {
	
	@ResponseBody
    @RequestMapping(value="/push.do",produces="text/event-stream;charset=utf-8")
    public   String push() {
        Random r = new Random();
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        return "data:Testing 1,2,3" + r.nextInt() +"\n\n";
    }
    
    @RequestMapping(value = "/sseTest.do", method = RequestMethod.GET)
    public String getSSEView (ModelMap map, HttpServletResponse response, HttpServletRequest request) {
    	System.out.println("ffffffffffff");
        return "/index";
    }
    
    
	

    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
