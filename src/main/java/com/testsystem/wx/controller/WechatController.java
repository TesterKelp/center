package com.testsystem.wx.controller;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.wx.service.WxService;
import com.testsystem.wx.util.SignUtil;

@Controller
public class WechatController
{
  private String DNBX_TOKEN = "nmgwxmxb";

  @Autowired
  private WxService wxService;

	@RequestMapping(value = "/name/connect.do", method = RequestMethod.GET)
	public void connectWeixin(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		boolean isGet = request.getMethod().toLowerCase().equals("get");
		PrintWriter out = response.getWriter();
		try {
			if (isGet) {
				String signature = request.getParameter("signature");
				String timestamp = request.getParameter("timestamp");
				String nonce = request.getParameter("nonce");
				String echostr = request.getParameter("echostr");

				if (SignUtil.checkSignature(this.DNBX_TOKEN, signature, timestamp, nonce)) {
					System.out.println("Connect the weixin server is successful.");
					response.getWriter().write(echostr);
				}
				System.out.println("Failed to verify the signature!");

			}
			String respMessage = "异常消息！";
			try {
				respMessage = this.wxService.weixinPost(request);
				System.out.println("3=");
				System.out.println("respMessage is :" + respMessage);

				out.write(respMessage);
				System.out.println("The request completed successfully");
				System.out.println("to weixin server " + respMessage);
			} catch (Exception e) {
				System.out.println("Failed to convert the message from weixin!");
			}
		} catch (Exception e) {
			System.out.println("Connect the weixin server is error.");
		} finally {
			out.close();
		}
	}
}