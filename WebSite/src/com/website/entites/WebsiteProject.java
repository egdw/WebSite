package com.website.entites;

import java.util.Date;

public class WebsiteProject {
    private Long projectId;

    private String projectUrl;

    private String projectTopic;

    private String projectText;

    private Date projectCreateDate;

    private byte[] projectImg;

    public Long getProjectId() {
        return projectId;
    }

    public void setProjectId(Long projectId) {
        this.projectId = projectId;
    }

    public String getProjectUrl() {
        return projectUrl;
    }

    public void setProjectUrl(String projectUrl) {
        this.projectUrl = projectUrl;
    }

    public String getProjectTopic() {
        return projectTopic;
    }

    public void setProjectTopic(String projectTopic) {
        this.projectTopic = projectTopic;
    }

    public String getProjectText() {
        return projectText;
    }

    public void setProjectText(String projectText) {
        this.projectText = projectText;
    }

    public Date getProjectCreateDate() {
        return projectCreateDate;
    }

    public void setProjectCreateDate(Date projectCreateDate) {
        this.projectCreateDate = projectCreateDate;
    }

    public byte[] getProjectImg() {
        return projectImg;
    }

    public void setProjectImg(byte[] projectImg) {
        this.projectImg = projectImg;
    }
}