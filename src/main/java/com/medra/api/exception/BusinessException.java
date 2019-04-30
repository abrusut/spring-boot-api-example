package com.medra.api.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value = HttpStatus.UNPROCESSABLE_ENTITY)
public class BusinessException  extends RuntimeException{
	
	private Integer code;
	private String description;	
	
	public BusinessException() {
		super();
	}
	public BusinessException(Integer code, String msjError, String description) {
		super(msjError);
		this.code = code;
		this.description = description;
		//this.setStackTrace(new StackTraceElement[0]);
	}
	
	public BusinessException(Integer code, String msjError) {
		super(msjError);
		this.code = code;
		//this.setStackTrace(new StackTraceElement[0]);
	}
	
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}

	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	

}
