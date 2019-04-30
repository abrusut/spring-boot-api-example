package com.medra.neurologia.utils;

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;

/**
 * Utils utilizado en su mayor parte para facilitar
 * la creacion de mensajes para logs
 * @author egomez
 *
 */
public final class StringUtils {

	/**
	 * A un mensaje dado concatena todos los objetos enviados por parametro.
	 * a cada uno de los objetos se le realiza un toString(), en caso de 
	 * que un parametro sea null, concatena "null" al String resultante
	 * @param message
	 * @param objects
	 * @return
	 */
	public static String buildString(Object ...messages) {
		StringBuilder builder = new StringBuilder();
		for (Object message : messages) {
			if (message != null)
				builder.append(message.toString().intern());
			else
				builder.append("null".intern());
		}
		return builder.toString();
	}
	
	/**
	 * Limpiar el string de caracteres especiales como acentos.
	 * @param string
	 * 
	 */
	public static String clearString(String stringToClean) {
		String stringReplaced = stringToClean;
		String regex = "[��]";
		stringReplaced = stringReplaced.toString().replaceAll("�", "n").replaceAll("�", "N")
												.replaceAll("�", "a").replaceAll("�", "A")
												.replaceAll("�", "e").replaceAll("�", "E")
												.replaceAll("�", "i").replaceAll("�", "I")
												.replaceAll("�", "o").replaceAll("�", "O")
												.replaceAll("�", "u").replaceAll("�", "U")
												.replaceAll(regex, "");
		return stringReplaced;
	}
	
	/**
	 * Formatea un entero a un string con 0 a la izquierda 
	 * @param number numero a convertir
	 * @param pattern formato a aplicar
	 */
	public static String formatNumber(int number, String pattern) {
		DecimalFormat formatter = new DecimalFormat(pattern);
		return formatter.format(number);
	}

	/**
	 * Formatea un double a un string con 0 a la izquierda 
	 * @param number numero a convertir
	 * @param pattern formato a aplicar
	 */
	public static String formatNumber(double number, String pattern) {
		DecimalFormat formatter = new DecimalFormat(pattern);
		return formatter.format(number);
	}

	public static String formatDouble2Digits(double number) {
		DecimalFormatSymbols decimalSeparator = new DecimalFormatSymbols();
		decimalSeparator.setDecimalSeparator('.');

		DecimalFormat formatter = new DecimalFormat("0.00",decimalSeparator);
		return formatter.format(number);
	}

	/**
	 * Formatea un long a un string con 0 a la izquierda 
	 * @param number numero a convertir
	 * @param pattern formato a aplicar
	 */
	public static String formatNumber(long number, String pattern) {
		DecimalFormat formatter = new DecimalFormat(pattern);
		return formatter.format(number);
	}
	/**
	 * Formatea un short a un string con 0 a la izquierda 
	 * @param number numero a convertir
	 * @param pattern formato a aplicar
	 */
	public static String formatNumber(short number, String pattern) {
		DecimalFormat formatter = new DecimalFormat(pattern);
		return formatter.format(number);
	}
	
	/**
	 * Recorta una cadena a la cantidad especificada 
	 * @param value valor de la cadena
	 * @param length cantidad de caracteres 
	 */
	public static String cutString(String value, int length) {
		if(value.length() > length)
			return value.substring(0, length);
		return value;
	}

	/**
	 * Evalua si una cadena es un numero (long)
	 * @param value valor de la cadena
	 */
	public static boolean isNumber(String value) {
		try {
			Long.parseLong(value);
			return true;
		} catch(Exception e) {
			return false;
		}
	}
	
	public static boolean isDoubleNumber(String value){
		try {
			Double.parseDouble(value);
			return true;
		} catch(Exception e) {
			return false;
		}
	}
	

	public static String centerString(String linea, int width) {
		String espacios = "                                        ";
		linea = linea.trim();
		
		int len = (width - linea.length())/2;
		
		return espacios.substring(0,len) + linea;
	}

	public static String centerExpandedString(String linea, int width) {
		String espacios = "                                        ";
		linea = Character.toString((char) 244) + linea;
		linea = linea.trim();
		
		int len = (width - linea.length())/2;
		
		return espacios.substring(0,len) + linea;
	}

	public String removeSpaces(String source)
	{
		String sCadenaSinBlancos="";
		for (int x=0; x < source.length(); x++) 
		{
		  if (source.charAt(x) != Character.SPACE_SEPARATOR && !Character.isSpaceChar(source.charAt(x)) )
		  {	  
		    sCadenaSinBlancos += source.charAt(x);
		  } 
		}
		return sCadenaSinBlancos;
	}
}
