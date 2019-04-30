package com.medra.api.utils;

import java.math.BigDecimal;

public final class MathUtils {

	/**
	 * @param number :numero a redondear
	 * @param precission : precision deseada
	 * @return 
	 */
	public static Double doubleRound(Double number,Integer precission)
	{
		return Math.round(number*Math.pow(10,precission))/Math.pow(10,precission);
	}
	/**
	 * @param number :numero a redondear
	 * @param precission : precision deseada
	 * @return 
	 */	
	public static BigDecimal bigDecimalRound(Double number, Integer precission)
	{
		BigDecimal big = new BigDecimal(number);
		return big.setScale(precission,BigDecimal.ROUND_HALF_UP);
	}
}
