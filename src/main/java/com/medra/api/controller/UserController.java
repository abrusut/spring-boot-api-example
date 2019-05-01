package com.medra.api.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.medra.api.exception.UserException;
import com.medra.api.exception.VmError;
import com.medra.api.model.CustomUserDetails;
import com.medra.api.repository.UserRepository;
import com.medra.api.service.CustomUserDetailsService;
import com.medra.api.service.EmailServices;


@RestController
public class UserController {
	
	private static final Logger log = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private CustomUserDetailsService customUserDetailsService;
	
	@Autowired
	private EmailServices emailServices;
	
	@Autowired
	private UserRepository userRepository;

	@RequestMapping("/public/status")
	public String index() {
			return "hello_:)";
	}
	
	@RequestMapping("/user")
	public CustomUserDetails user(Principal principal) {
		log.debug("Getting user based on principal: {}", principal.getName());
		
		// return principal with id as username
		CustomUserDetails userModel = (CustomUserDetails) customUserDetailsService.loadUserByUsername(principal.getName());
		userModel.setPassword(null);
		//userModel.setUserid(null);
		

		return userModel;
	}
	
	@RequestMapping(value = "/public/user/save", method = RequestMethod.POST,consumes="application/json" )	
	public CustomUserDetails insert(@RequestBody com.medra.api.domain.User userModel) {
		com.medra.api.domain.User userResult=null;
		UserDetails u = customUserDetailsService.loadUserByUsername(userModel.getUserName());
		if(u==null){
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String hashedPassword = passwordEncoder.encode(userModel.getPassword());
		userModel.setPassword(hashedPassword);
		userResult=this.userRepository.save(userModel);
		userResult.setPassword(null);
		userResult.setUserid(null);
		}else{
			throw new UserException(422,"nombre de usuario existente","nombre de usuario existente");
		}
		List<String> roles=new ArrayList<>();
		roles.add("ROLE_USER");
		emailServices.enviarMailUsuarioCreadoAsync(userModel.getUserName(), userModel.getEmail());
		return new CustomUserDetails(userResult,roles) ;
	}
	
	@RequestMapping(value = "/user/confirmar/{username}/{code}", method = RequestMethod.POST,consumes="application/json" )	
	public CustomUserDetails insert(@PathVariable(required=true) String username,@PathVariable(required=true) String code) {
		CustomUserDetails userResult=null;
		CustomUserDetails u = (CustomUserDetails) customUserDetailsService.loadUserByUsername(username);
		if(u!=null){
			//resto 30min a la fecha actual
			Date fechaRestadaActual=getFechaHorasRestada(new Date(),30);
			//si fecharestada esta antes de fechaAlta
			/*if(fechaRestadaActual.before(u.getFechaAlta())){
				if(code.equals(u.getCodigoConfirmacion())){
					u.setEnabled(true);
				}else{
					throw new UserException(422,"incorrecto, verifique el codigo de confirmacion", "incorrecto, verifique el codigo de confirmacion");
				}
			}else{
				throw new UserException(422,"caduco la fecha de confirmacion, solicitar otro codigo", "caduco la fecha de confirmacion, solicitar otro codigo");
			}*/
		}else{
			throw new UserException(422,"usuario inexistente","usuario inexistente");
		}
		return userResult;
	}
	
	
	private Date getFechaHorasRestada(Date fecha,Integer minutosRestados){
		Calendar cal = Calendar.getInstance();
		cal.setTime(fecha);
		
		cal.set(Calendar.MINUTE, cal.get(Calendar.MINUTE)- minutosRestados);
		return cal.getTime();

	}
	
	@ExceptionHandler({ UserException.class })
    public ResponseEntity<VmError> handleAccessDeniedException(UserException ex) {
		VmError errorResponse=new VmError(ex);
        return new ResponseEntity<VmError>(errorResponse, HttpStatus.UNPROCESSABLE_ENTITY);
    }


}
