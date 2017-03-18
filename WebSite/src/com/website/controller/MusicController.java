package com.website.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.website.entites.NeteaseMusic;
import com.website.utils.NeteaseMusicUtils;
import com.website.utils.NeteaseMusicUtils.UrlConstants;

@Controller
@RequestMapping("music")
public class MusicController {

	/**
	 * 进入搜索界面
	 * 
	 * @return
	 */
	@RequestMapping("searchView")
	public String entrySearch() {
		return "/music/search";
	}

	/**
	 * 根据歌曲名和名字查询
	 * 
	 * @throws UnsupportedEncodingException
	 */
	@RequestMapping(value = "search")
	public String search(Integer pageNum, String songsName,
			Map<String, Object> map) throws UnsupportedEncodingException {
		if (songsName == null) {
			map.put("errorMessage", "查询失败:没有找到参数");
		}
		if (pageNum == null) {
			pageNum = 0;
		}
		NeteaseMusic searchMusic = NeteaseMusicUtils.SearchMusic(getURLEncoderString(songsName), 15, 1, 0);
		map.put("errorMessage", "");
		if (searchMusic != null) {
			int code = searchMusic.getCode();
			if (searchMusic.getResult() == null) {
				map.put("errorMessage", "查询失败!");
				return "/music/list";
			}
			if (code == 200) {
				map.put("lists", searchMusic.getResult().getSongs());
				map.put("songCount", searchMusic.getResult().getSongCount());
				map.put("pageCount", pageNum);
			} else {
				map.put("errorMessage", "查询失败:" + code);
			}
		} else {
			map.put("errorMessage", "查询为空!");
		}
		return "/music/list";
	}
	
	
	 /**
     * URL 转码
     *
     * @return String
     * @author lifq
     * @date 2015-3-17 下午04:10:28
     */
    public static String getURLEncoderString(String str) {
        String result = "";
        if (null == str) {
            return "";
        }
        try {
            result = java.net.URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return result;
    }
}
