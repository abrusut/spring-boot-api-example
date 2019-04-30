package com.medra.api.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;

@Service
public class EmailServices {

	@Value("${spring.mail.from}")
	private String defaultFrom;

	ClassPathResource pathLogo = new ClassPathResource("templates/email/img/logo.png");

	@Autowired
	private TemplateEngine emailTtemplateEngine;
	@Autowired
	private JavaMailSender javaMailSender;

	@Async
	public void enviarMailUsuarioCreadoAsync(String nombreUsuario, String to) {
		enviarMailUsuarioCreado(nombreUsuario,to);
	}
	
	public String enviarMailUsuarioCreado(String nombreUsuario, String to) {
		String subject = "Registro exitoso";
		Context context = new Context();
		context.setVariable("userName", nombreUsuario);
		context.setVariable("logo", "logo");
		String htmlBody = emailTtemplateEngine.process("email/usuarioRegistrado", context);

		MimeMessagePreparator messagePreparator = mimeMessage -> {
			MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
			messageHelper.setFrom(defaultFrom);
			messageHelper.setTo(to);
			messageHelper.setSubject(subject);
			messageHelper.setText(htmlBody, true);
			messageHelper.addInline("logo", pathLogo);
		};

		try {
			javaMailSender.send(messagePreparator);
		} catch (MailException e) {
			e.printStackTrace();
		}
		return htmlBody;
	}

}
