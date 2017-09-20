package com.servlet;

import java.io.IOException;
import java.util.SortedMap;
import java.util.TreeMap;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.json.JSONObject;
import com.utils.GetWxOrderno;
import com.utils.RequestHandler;
import com.utils.Sha1Util;
import com.utils.TenpayUtil;

public class TopayServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		JSONObject json = new JSONObject();
		
		//网页授权后获取传递的参数
		String money = request.getParameter("money");//分为单位
		String openId = request.getParameter("openId");
		
		//金额转化为分为单位
//		float sessionmoney = Float.parseFloat(money);
//		String finalmoney = String.format("%.2f", sessionmoney);
//		finalmoney = finalmoney.replace(".", "");
		int intMoney = Integer.parseInt(money);
		
		//商户相关资料 
		String appid = "";//公众号appid
		String appsecret = "";//公众号秘钥
		String partner = "";//商户号
		String partnerkey = "";//商户API秘钥
	
		//用于获取随机数
		String currTime = TenpayUtil.getCurrTime();//获取当前时间
		String strTime = currTime.substring(8, currTime.length());//8位日期
		String strRandom = TenpayUtil.buildRandom(4) + "";//四位随机数
		String strReq = strTime + strRandom;//10位序列号,可以自行调整
		
		String orderNo=appid+Sha1Util.getTimeStamp();//随机生成了一个订单号
				
				//商户号
				String mch_id = partner;
				
				//子商户号  非必输
				//String sub_mch_id="";
				
				//设备号   非必输
				String device_info="WEB";
				
				//随机数 
				String nonce_str = strReq;
				
				//商品描述
				String body = "一元夺宝";
				
				//附加数据
				String attach = "xx科技有限公司";
				
				//商户订单号
				String out_trade_no = orderNo;
				
				//总金额以分为单位，不带小数点
				int total_fee = intMoney;
				
				//订单生成的机器 IP
				String spbill_create_ip = request.getRemoteAddr();
				
				//订 单 生 成 时 间   非必输
//				String time_start ="";
				
				//订单失效时间      非必输
//				String time_expire = "";
				
				//商品标记   非必输
//				String goods_tag = "";
				
				//支付完成后微信发给该链接信息，可以判断会员是否支付成功，改变订单状态等：http://*/weChatpay/notifyServlet
				String notify_url ="http://你的域名/weChatpay/notifyServlet";
				
				String trade_type = "JSAPI";
				
				String openid = openId;
				
				//非必输
//				String product_id = "";
				
				//获取sign（统一下单接口签名）
				//第一步，设所有发送或者接收到的数据为集合M，将集合M内非空参数值的参数按照参数名ASCII码从小到大排序（字典序），
				//使用URL键值对的格式（即key1=value1&key2=value2…）拼接成字符串stringA。
				//第二步，在stringA最后拼接上key得到stringSignTemp字符串，并对stringSignTemp进行MD5运算，
				//再将得到的字符串所有字符转换为大写，得到sign值signValue。
				SortedMap<String, String> packageParams = new TreeMap<String, String>();
				packageParams.put("appid", appid);  
				packageParams.put("mch_id", mch_id);  
				packageParams.put("nonce_str", nonce_str);  
				packageParams.put("body", body);  
				packageParams.put("attach", attach);  
				packageParams.put("out_trade_no", out_trade_no);  
				packageParams.put("total_fee", money);  
				packageParams.put("spbill_create_ip", spbill_create_ip);  
				packageParams.put("notify_url", notify_url);  
				packageParams.put("trade_type", trade_type);  
				packageParams.put("openid", openid);  
				RequestHandler reqHandler = new RequestHandler(request, response);
				reqHandler.init(appid, appsecret, partnerkey);
				String sign = reqHandler.createSign(packageParams);
				
				//统一下单接口携带参数（xml格式），接口地址https://api.mch.weixin.qq.com/pay/unifiedorder
				String xml="<xml>"+
						"<appid>"+appid+"</appid>"+
						"<mch_id>"+mch_id+"</mch_id>"+
						"<nonce_str>"+nonce_str+"</nonce_str>"+
						"<sign>"+sign+"</sign>"+
						"<body><![CDATA["+body+"]]></body>"+
						"<attach>"+attach+"</attach>"+
						"<out_trade_no>"+out_trade_no+"</out_trade_no>"+
						//金额，这里写的1 分到时修改，测试用
//						"<total_fee>"+1+"</total_fee>"+
						"<total_fee>"+total_fee+"</total_fee>"+
						"<spbill_create_ip>"+spbill_create_ip+"</spbill_create_ip>"+
						"<notify_url>"+notify_url+"</notify_url>"+
						"<trade_type>"+trade_type+"</trade_type>"+
						"<openid>"+openid+"</openid>"+
						"</xml>";
				System.out.println(xml);
				
				String allParameters = "";//没用
				try {
					allParameters =  reqHandler.genPackage(packageParams);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				//请求微信统一下单接口，成功后返回预支付交易会话标识prepay_id
				String createOrderURL = "https://api.mch.weixin.qq.com/pay/unifiedorder";
				String prepay_id = "";
				try {
					prepay_id = new GetWxOrderno().getPayNo(createOrderURL, xml);
					if(prepay_id.equals("")){
						request.setAttribute("ErrorMsg", "统一支付接口获取预支付订单出错");
						response.sendRedirect("error.jsp");
					}
				} catch (Exception e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				
				//生成H5调起微信支付API相关参数（前端页面js的配置参数）
				SortedMap<String, String> finalpackage = new TreeMap<String, String>();
				String timestamp = Sha1Util.getTimeStamp();//当前时间的时间戳
				String packages = "prepay_id="+prepay_id;;//订单详情扩展字符串
				finalpackage.put("appId", appid);//公众号appid  
				finalpackage.put("timeStamp", timestamp);  
				finalpackage.put("nonceStr", strReq); //随机数 
				finalpackage.put("package", packages);  
				finalpackage.put("signType", "MD5");//签名方式
				String finalsign = reqHandler.createSign(finalpackage);//签名

				json.put("appId", appid);
				json.put("timeStamp", timestamp);
				json.put("nonceStr", strReq);
				json.put("packages", packages);
				json.put("sign", finalsign);
				response.getWriter().append(json.toString());
				
				//response.sendRedirect("shop/index.jsp?appid="+appid+"&timeStamp="+timestamp+"&nonceStr="+strReq+"&package="+packages+"&sign="+finalsign);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
