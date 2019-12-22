package com.entity;

import java.util.Date;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class Files {
	private int fileId;
	private String fileName;
	private String fileFormat;
	private String fileAddress;
	private int type;//1：教务通知文件；2：公共资料；
	private Date uploadTime;
	private String uploaderName;
	private int status;//文件的状态 0代表删除 ，1代表正常
	public Files() {
		super();
	}
	
	@Override
	public String toString() {
		return "Files [fileId=" + fileId + ", fileName=" + fileName + ", fileFormat=" + fileFormat + ", fileAddress="
				+ fileAddress + ", type=" + type + ", uploadTime=" + uploadTime + ", uploaderName=" + uploaderName
				+ ", status=" + status + "]";
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
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
