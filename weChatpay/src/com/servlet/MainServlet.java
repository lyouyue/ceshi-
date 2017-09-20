package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.json.JSONObject;
import com.utils.CommonUtil;

public class MainServlet extends HttpServlet {

	//网页授权获取用户信息
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String appid = "";//公众号appid
		String appsecret = "";//公众号秘钥
		//微信返回的code
		String code = request.getParameter("code");
		
		//获取openId和access_token（获取openId后调用统一支付接口https://api.mch.weixin.qq.com/pay/unifiedorder）
		String openId = "";
		String access_token = "";
		String URL = "https://api.weixin.qq.com/sns/oauth2/access_token?appid="+appid+"&secret="+appsecret+"&code="+code+"&grant_type=authorization_code";
		JSONObject jsonObject = CommonUtil.httpsRequest(URL, "GET", null);
		if (null != jsonObject) {
			openId = jsonObject.getString("openid");
			access_token = jsonObject.getString("access_token");
		}
		request.getSession().setAttribute("openId", openId);
		
		//获取用户信息
		String nickname = "";
		String headimgurl = "";
		String userURL = "https://api.weixin.qq.com/sns/userinfo?access_token="+access_token+"&openid="+openId+"";
		JSONObject userJson = CommonUtil.httpsRequest(userURL, "GET", null);
		if (null != jsonObject) {
			nickname = userJson.getString("nickname");
			headimgurl = userJson.getString("headimgurl");
		}
		request.getSession().setAttribute("nickname", nickname);
		request.getSession().setAttribute("headimgurl", headimgurl);
		
		response.sendRedirect("shop/index.jsp");
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
