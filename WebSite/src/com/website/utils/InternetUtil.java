package com.website.utils;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

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
			openConnection.connect();
			InputStream inputStream = openConnection.getInputStream();
			StringBuffer sb = new StringBuffer();
			byte[] bytes = new byte[1024];
			int len = -1;
			while ((len = inputStream.read(bytes)) != -1) {
				sb.append(new String(bytes, 0, len));
			}
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
