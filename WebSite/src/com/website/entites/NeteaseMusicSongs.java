package com.website.entites;

import java.util.ArrayList;

public class NeteaseMusicSongs {
	private long id;
	private String name;
	private ArrayList<NeteaseMusicArtists> artists;
	private NeteaseMusicAlbum album;
	private String audio;
	private long djProgramId;
	private String page;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public ArrayList<NeteaseMusicArtists> getArtists() {
		return artists;
	}

	public void setArtists(ArrayList<NeteaseMusicArtists> artists) {
		this.artists = artists;
	}

	public NeteaseMusicAlbum getAlbum() {
		return album;
	}

	public void setAlbum(NeteaseMusicAlbum album) {
		this.album = album;
	}

	public String getAudio() {
		return audio;
	}

	public void setAudio(String audio) {
		this.audio = audio;
	}

	public long getDjProgramId() {
		return djProgramId;
	}

	public void setDjProgramId(long djProgramId) {
		this.djProgramId = djProgramId;
	}

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	@Override
	public String toString() {
		return "NeteaseMusicSongs [id=" + id + ", name=" + name + ", artists="
				+ artists + ", album=" + album + ", audio=" + audio
				+ ", djProgramId=" + djProgramId + ", page=" + page + "]";
	}

}
