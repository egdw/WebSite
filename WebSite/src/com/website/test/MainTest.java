package com.website.test;

import org.junit.Test;

import com.website.entites.NeteaseMusic;
import com.website.utils.NeteaseMusicUtils;

public class MainTest {

	@Test
	public void test() {
//		NeteaseMusicUtils.Cloud_Music_MusicInfoAPI("456185073", "456185073");
		NeteaseMusic neteaseMusic = NeteaseMusicUtils.SearchMusic("黄家驹", 1002, 1, 0);
		System.out.println(neteaseMusic);
	}

}
