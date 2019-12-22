package com.entity;

import java.util.Date;

public class Source {
	private int fileId;
	private String fileName;
	private String fileFormat;
	private String fileAddress;
	private int type;
	private Date uploadTime;
	private String uploaderName;
	private int status;//文件的状态 0代表删除 ，1代表正常
}
