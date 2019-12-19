package com.entity;

import java.util.Date;

public class Files {
	private int fileId;
	private String fileName;
	private String fileFormat;
	private String fileAddress;
	private int type;
	private Date uploadTime;
	private String uploaderName;
	public Files() {
		super();
	}
	@Override
	public String toString() {
		return "Files [fileId=" + fileId + ", fileName=" + fileName + ", fileFormat=" + fileFormat + ", fileAddress="
				+ fileAddress + ", type=" + type + ", uploadTime=" + uploadTime + ", uploaderName=" + uploaderName
				+ "]";
	}
	public int getFileId() {
		return fileId;
	}
	public void setFileId(int fileId) {
		this.fileId = fileId;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFileFormat() {
		return fileFormat;
	}
	public void setFileFormat(String fileFormat) {
		this.fileFormat = fileFormat;
	}
	public String getFileAddress() {
		return fileAddress;
	}
	public void setFileAddress(String fileAddress) {
		this.fileAddress = fileAddress;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public Date getUploadTime() {
		return uploadTime;
	}
	public void setUploadTime(Date uploadTime) {
		this.uploadTime = uploadTime;
	}
	public String getUploaderName() {
		return uploaderName;
	}
	public void setUploaderName(String uploaderName) {
		this.uploaderName = uploaderName;
	}
	
	
}
