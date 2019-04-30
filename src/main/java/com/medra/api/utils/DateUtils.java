package com.medra.neurologia.utils;

import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.time.DayOfWeek;
import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * Utils utilizado para manejo de fechas
 * @author gvazquez
 *
 */
@SuppressWarnings("deprecation")
public final class DateUtils {
	
	private static ZoneId defaultZoneId = ZoneId.systemDefault();

	public static Date removeTime(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.set(Calendar.HOUR_OF_DAY, 0);
        cal.set(Calendar.MINUTE, 0);
        cal.set(Calendar.SECOND, 0);
        cal.set(Calendar.MILLISECOND, 0);
        return cal.getTime();
    }
	
	public static Date sumarRestarDiasFecha(Date fecha, int dias) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(fecha); // Configuramos la fecha que se recibe
		calendar.add(Calendar.DAY_OF_YEAR, dias); // numero de días a añadir, o	// restar en caso de días<
		return calendar.getTime(); // Devuelve el objeto Date con los nuevos// días añadidos
	}
	
	public static Date sumarRestarMesFecha(Date fecha, int mes) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(fecha); // Configuramos la fecha que se recibe
		calendar.add(Calendar.MONTH, fecha.getMonth()+mes); // numero de días a añadir, o	// restar en caso de días<
		return calendar.getTime(); // Devuelve el objeto Date con los nuevos// días añadidos
	}
	
	public static Date sumarRestarMinutosFecha(Date fecha, int minutos) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(fecha); // Configuramos la fecha que se recibe
		calendar.add(Calendar.MINUTE, minutos); // numero de días a añadir, o	// restar en caso de días<
		return calendar.getTime(); // Devuelve el objeto Date con los nuevos// días añadidos
	}
    
    /**
     * Hora/min con fecha minima
     * @param date
     * @return
     */
    public static Date getHoraMinFechaMin(Integer hora,Integer minutos) {
          Calendar calendar = Calendar.getInstance();
          calendar.set(1970, 0, 1, hora, minutos,0);
          return calendar.getTime();
    }

	public static Date setTime(Date fecha, Date time) {
		Calendar cal = Calendar.getInstance(); // locale-specific
		cal.setTime(fecha);
		cal.set(Calendar.HOUR_OF_DAY, time.getHours());
		cal.set(Calendar.MINUTE, time.getMinutes());
		return cal.getTime();
	}
	
	public static LocalDate dateToLocalDate(final Date date) {
		Date dateChange=new Date(date.getTime());
		Instant instantDate = dateChange.toInstant();
		LocalDate localDate = instantDate.atZone(defaultZoneId).toLocalDate();
		return localDate;
	}
	
	public static Date localDateToDate(LocalDate localDate) {
		return Date.from(localDate.atStartOfDay(defaultZoneId).toInstant());
	}
  
	
	/*
	 * Para un dia de la semana ejemplo MARTES saca todos los Dates que sean Martes entre fecha inicio y fin
	 * Ejemplo, para una fecha del 01-01-2018 al 01-02-2018 y DayOfWeek=Martes saca 4 Martes como Dates
	 */
	private static List<LocalDate> disDeSemanaPorRango(DayOfWeek diaDeLaSemana, LocalDate currentStart, LocalDate currentEnd) {
		List<LocalDate> result=new ArrayList<>();
		do{
			if(diaDeLaSemana.equals(currentStart.getDayOfWeek())) {
				result.add(currentStart);	
			}
			currentStart=currentStart.plusDays(1);
		}while (!currentStart.equals(currentEnd));
		return result;
	}

	public static List<LocalDate> disDeSemanaPorRango(DayOfWeek diaDeLaSemana, Date desdeD, Date hastaD) {
		LocalDate currentStart = DateUtils.dateToLocalDate(desdeD);
		LocalDate currentEnd = DateUtils.dateToLocalDate(hastaD);
		return disDeSemanaPorRango(diaDeLaSemana,currentStart,currentEnd);
	}

	public static Date getProximoMes(Date fechaHasta) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(fechaHasta);
		cal.set(Calendar.DAY_OF_MONTH, 1);
		cal.add(Calendar.MONTH, fechaHasta.getMonth()+1);
		cal.set(Calendar.HOUR,0);
		cal.set(Calendar.MINUTE,0);
		cal.set(Calendar.SECOND,0);
		cal.set(Calendar.MILLISECOND,0);
		return cal.getTime();
	}
}
