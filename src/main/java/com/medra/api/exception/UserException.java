package com.medra.api.exception;



public class UserException  extends GenericException{
	
	
	public UserException() {
		super();
	}
	public UserException(Integer code, String msjError, String description) {
		super(code,msjError,description);
	}
	
	
	

}
