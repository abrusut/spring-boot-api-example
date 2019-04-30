package com.medra.neurologia.exception;

public class VmError {

	private Integer code;
	private String message;
	private String description;
	
	
	
	public VmError(GenericException genericException) {
		super();
		this.code = genericException.getCode();
		this.message = genericException.getMessage();
		this.description = genericException.getMessage();
	}
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}	
	
	
	
}
