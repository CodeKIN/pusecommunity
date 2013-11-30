package org.codekin.pusecommunity.model;

import java.util.Date;

import org.codehaus.jackson.annotate.JsonProperty;

public class JsonRecentPostList {
	@JsonProperty
	private int POST_ID;
	@JsonProperty
	private String SUBJECT;
	@JsonProperty
	private Date WRITE_DT;
	@JsonProperty
	private String BOARD_TYPE;
	
	public int getPOST_ID() {
		return POST_ID;
	}
	public void setPOST_ID(int pOST_ID) {
		POST_ID = pOST_ID;
	}
	public String getSUBJECT() {
		return SUBJECT;
	}
	public void setSUBJECT(String sUBJECT) {
		SUBJECT = sUBJECT;
	}
	public Date getWRITE_DT() {
		return WRITE_DT;
	}
	public void setWRITE_DT(Date wRITE_DT) {
		WRITE_DT = wRITE_DT;
	}
	public String getBOARD_TYPE() {
		return BOARD_TYPE;
	}
	public void setBOARD_TYPE(String bOARD_TYPE) {
		BOARD_TYPE = bOARD_TYPE;
	}
}