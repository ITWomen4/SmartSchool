package com.entity;

import java.util.Date;

public class LgNotice {
	private int noticeId;
	private String uploaderName;
	private String noticeName;
	private String content;
	private Date uploadTime;
	public LgNotice() {
		super();
	}

	public String getNoticeName() {
		return noticeName;
	}

	@Override
	public String toString() {
		return "LgNotice [noticeId=" + noticeId + ", uploaderName=" + uploaderName + ", noticeName=" + noticeName
				+ ", content=" + content + ", uploadTime=" + uploadTime + "]";
	}

	public void setNoticeName(String noticeName) {
		this.noticeName = noticeName;
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
