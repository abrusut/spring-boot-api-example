package com.medra.neurologia.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value = HttpStatus.NOT_FOUND)
public class GenericException  extends RuntimeException{
	
	private Integer code;
	private String description;	
	
	public GenericException() {
		super();
	}
	public GenericException(Integer code, String msjError, String description) {
		super(msjError);
		this.code = code;
		this.description = description;
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
