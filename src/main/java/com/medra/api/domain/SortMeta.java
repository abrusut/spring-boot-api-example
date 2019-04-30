package com.medra.neurologia.domain;

import java.io.Serializable;

public class SortMeta implements Serializable {	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 4850336383010755481L;
	
	private String field;
	private Short order;
	
	public String getField() {
		return field;
	}
	public void setField(String field) {
		this.field = field;
	}
	public Short getOrder() {
		return order;
	}
	public void setOrder(Short order) {
		this.order = order;
	}
	
	
	
}
