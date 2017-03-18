package com.website.utils;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

import com.alibaba.fastjson.JSON;
import com.website.entites.NeteaseMusic;

/**
 * 网络通信工具类
 * 
 */
public class InternetUtil {
	/**
	 * 请求方式 get 进行get请求
	 */
	public static String request(String path) {
		try {
			URL url = new URL(path);
			HttpURLConnection openConnection = (HttpURLConnection) url
					.openConnection();
			openConnection.setRequestMethod("POST");
			openConnection.connect();
			//转换成utf-8.解决页面乱码问题
			InputStreamReader inputStreamReader = new InputStreamReader(
					openConnection.getInputStream(),"UTF-8");
			StringBuffer sb = new StringBuffer();
			char[] bytes = new char[1024];
			int len = -1;
			while ((len = inputStreamReader.read(bytes)) != -1) {
				sb.append(new String(bytes, 0, len));
			}
			inputStreamReader.close();
			return sb.toString();
		} catch (MalformedURLException e) {
			return null;
		} catch (IOException e) {
			return null;
		}
	}

	/**
	 * 请示方式 post 进行post请求
	 */
	public static void post() {

	}
}
