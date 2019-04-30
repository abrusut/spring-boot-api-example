package com.medra.neurologia.service;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.stream.Collectors;

import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.medra.neurologia.domain.Paciente;
import com.medra.neurologia.domain.ReportePacientesDTO;
import com.medra.neurologia.domain.Turno;
import com.medra.neurologia.report.ReportHorarioClienteSemana;

import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.engine.util.JRSaver;
import net.sf.jasperreports.engine.xml.JRXmlLoader;

@Service
public class JasperReportsService {
	
	private Locale localeEsp=new Locale ( "es" , "ES" );

	@Value("classpath:static/reports/horariosPacientesDiaSemana.jasper")
	Resource horariosPacientesDiaSemana;
	@Value("classpath:static/img/innelLogo.png")
	Resource logoReport;
	
	@Value("classpath:static/reports/listadoPacientesConScheduleActivoReport.jrxml")
	Resource listadoPacientesConScheduleActivoReport;

	JasperReport listadoPacientesConScheduleActivoReportjr = null;
	
	public byte[] generarPDFlistadoPacientesConScheduleActivoReport(List<ReportePacientesDTO> reportePacientesDTO,
			Date fechahasta,Boolean isFilterPacienteAlta) {

		
		Map<String, Object> params = new HashMap<>();
		DateFormat df= DateFormat.getDateInstance(DateFormat.MEDIUM,localeEsp );
		String titulo = "REPORTE PACIENTES";
		if(isFilterPacienteAlta) {
			titulo = "REPORTE PACIENTES ACTIVOS: ";
		}else {
			titulo = "REPORTE PACIENTES NO ACTIVOS: ";
		}
		//if(fechahasta!=null)
		//	titulo +=" - "+df.format(fechahasta).replaceAll("-", " ");
			
			
		params.put("titulo", titulo);
		try {
			BufferedImage image = ImageIO.read(logoReport.getFile());
			params.put("innelLogo", image );
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		

		JRDataSource dataSource=new JRBeanCollectionDataSource(reportePacientesDTO);
		byte[] bytes = null;
		JasperReport jasperReport = null;

		JasperDesign jd;
		try {
			if(listadoPacientesConScheduleActivoReportjr==null) {
				listadoPacientesConScheduleActivoReportjr= JasperCompileManager.compileReport(listadoPacientesConScheduleActivoReport.getInputStream());
			}
			JasperPrint jasperPrint = 
					JasperFillManager.fillReport(listadoPacientesConScheduleActivoReportjr, params, dataSource);
			// return the PDF in bytes
			bytes = JasperExportManager.exportReportToPdf(jasperPrint);
		} catch (JRException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		return bytes;
		
	}
	
	public byte[] generatePDFReportHorariosPacientesDiaSemana(List<Turno> turnos,Date desde,Date hasta) {
		List<ReportHorarioClienteSemana> pacientes=new ArrayList<>();
		
		Map<String, Object> params = new HashMap<>();
		DateFormat df= DateFormat.getDateInstance(DateFormat.MEDIUM,localeEsp );
		params.put("titulo", "REPORTE SEMANAL: "+desde.getDate()+" - "+df.format(hasta).replaceAll("-", " "));
		try {
			BufferedImage image = ImageIO.read(logoReport.getFile());
			params.put("innelLogo", image );
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		HashMap<Long,Paciente> turnosReport=new HashMap<>();
		for(Turno turno:turnos) {
			Paciente paciente=turno.getPaciente();
			//si el turno no fue tratado
			if(!turnosReport.containsKey(paciente.getId())) {
			      List<Turno> turnosPaciente = turnos.stream()   
			                .filter(turnoPaciente -> paciente.getId().equals(turnoPaciente.getPaciente().getId())) 
			                .collect(Collectors.toList());
			      if(turnosPaciente!=null && !turnosPaciente.isEmpty()) {
			    	ReportHorarioClienteSemana r=new ReportHorarioClienteSemana();
			  		r.setApellido(paciente.getApellido());
			  		r.setNombre(paciente.getNombre());
			  		for(Turno turnoPaciente:turnosPaciente) {
			  			int diaDeLaSemana=turnoPaciente.getFecha().getDay();
			  			//1 lunes, 2 martes ... no soporta domingo y sabado para reporte
			  			switch (diaDeLaSemana) {
						case 1:
							r.setLunes(this.listaTurnoPorDiaSemanaFormater(turnosPaciente,diaDeLaSemana));
							break;
						case 2:
							r.setMartes(this.listaTurnoPorDiaSemanaFormater(turnosPaciente,diaDeLaSemana));
							break;
						case 3:
							r.setMiercoles(this.listaTurnoPorDiaSemanaFormater(turnosPaciente,diaDeLaSemana));
							break;
						case 4:
							r.setJueves(this.listaTurnoPorDiaSemanaFormater(turnosPaciente,diaDeLaSemana));
							break;
						case 5:
							r.setViernes(this.listaTurnoPorDiaSemanaFormater(turnosPaciente,diaDeLaSemana));
							break;	
						default:
							break;
						}
			  		}	  				  			  		
			  		pacientes.add(r);
			      }
			      //paciente procesado de los turnos
			      turnosReport.put(paciente.getId(), paciente);
			}
		}
			
		JRDataSource dataSource=new JRBeanCollectionDataSource(pacientes);
		byte[] bytes = null;
		JasperReport jasperReport = null;

		JasperDesign jd;
		try {
			
			JasperPrint jasperPrint = JasperFillManager.fillReport(horariosPacientesDiaSemana.getInputStream(), params, dataSource);
			// return the PDF in bytes
			bytes = JasperExportManager.exportReportToPdf(jasperPrint);
		} catch (JRException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		return bytes;
	}

	private String listaTurnoPorDiaSemanaFormater(List<Turno> turnosPaciente,Integer diaSemana) {
		StringBuilder turnoListFormat=new StringBuilder();
		for(Turno turno:turnosPaciente) {
			if(diaSemana.equals(turno.getFecha().getDay())) 
			{
				turnoListFormat
				.append(new SimpleDateFormat("HH:mm").format(turno.getScheduleDay().getHoraDesde()))
				.append(" ").append(turno.getActividad().getNombre()).append("\n");
			}
		}
		return turnoListFormat.toString();
	}
}
