package com.entity;

import java.util.Date;

public class LgNotice {
	private int noticeId;
	private String uploaderName;
	private String content;
	private Date uploadTime;
	public LgNotice() {
		super();
	}
	@Override
	public String toString() {
		return "LgNotice [noticeId=" + noticeId + ", uploaderName=" + uploaderName + ", content=" + content
				+ ", uploadTime=" + uploadTime + "]";
	}
	public int getNoticeId() {
		return noticeId;
	}
	public void setNoticeId(int noticeId) {
		this.noticeId = noticeId;
	}
	public String getUploaderName() {
		return uploaderName;
	}
	public void setUploaderName(String uploaderName) {
		this.uploaderName = uploaderName;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getUploadTime() {
		return uploadTime;
	}
	public void setUploadTime(Date uploadTime) {
		this.uploadTime = uploadTime;
	}
	
}
