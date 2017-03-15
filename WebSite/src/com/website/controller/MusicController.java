package com.website.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.website.entites.NeteaseMusic;
import com.website.utils.NeteaseMusicUtils;

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
	 */
	@RequestMapping(value="search")
	public String search(Integer pageNum, String songsName,
			Map<String, Object> map) {
		if (songsName == null) {
			map.put("errorMessage", "查询失败:没有找到参数");
		}
		if (pageNum == null) {
			pageNum = 0;
		}
		System.out.println(new String(songsName));
		try {
			FileOutputStream stream = new FileOutputStream(new File("/Users/hdy/Downloads/201411081504537201/1.txt"),true);
			stream.write(songsName.getBytes());
			stream.flush();
			stream.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		NeteaseMusic searchMusic = NeteaseMusicUtils.SearchMusic(songsName, 15,
				1, 0);
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

}
