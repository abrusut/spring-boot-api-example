package com.medra.api.controller;

import static org.springframework.http.MediaType.APPLICATION_JSON_VALUE;
import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.medra.api.domain.Actividad;
import com.medra.api.domain.Empleado;
import com.medra.api.exception.ResourceNotFoundException;
import com.medra.api.service.ActividadServices;
import com.medra.api.service.CustomUserDetailsService;
import com.medra.api.service.EmpleadoServices;




@RestController
@RequestMapping("/api/empleado")
public class EmpleadoController {

	@Autowired
	private EmpleadoServices empleadoServices;
	@Autowired
	private CustomUserDetailsService customUserDetailsService;
	@Autowired
	private ActividadServices actividadServices;
	
	@RequestMapping(value = "", method = GET, produces = APPLICATION_JSON_VALUE)
	public Page<Empleado> getPersons(@PageableDefault(value = 20) Pageable pageable) {
		return this.empleadoServices.findAll(pageable);
	}
	
	@RequestMapping(value = "profesional", method = GET, produces = APPLICATION_JSON_VALUE)
	public Page<Empleado> getProfesionals(@RequestParam(name="filterNombreOrDni",required=false) String filtroNombreApellidoOrDni,@PageableDefault(value = 20) Pageable pageable) {
		Page<Empleado> result=null;
		if(filtroNombreApellidoOrDni!=null && !filtroNombreApellidoOrDni.isEmpty()) {
			result=this.empleadoServices.findByFilterAll(filtroNombreApellidoOrDni,pageable);
		}else {
			result=this.empleadoServices.findAll(pageable);
		}
		return result;
	}
	
	@RequestMapping(value = "profesional/list", method = GET, produces = APPLICATION_JSON_VALUE)
	public List<Empleado> getProfesionals(@RequestParam(name="filterNombreOrDni",required=false) String filtroNombreApellidoOrDni) {
		List<Empleado> result=null;
		if(filtroNombreApellidoOrDni!=null && !filtroNombreApellidoOrDni.isEmpty()) {
			result=this.empleadoServices.findProfesionalesByFilter(filtroNombreApellidoOrDni);
		}else {
			result=this.empleadoServices.findProfesionals();
		}
		return result;
	}

	@RequestMapping(value = "{id}", method = GET, produces = APPLICATION_JSON_VALUE)
	public ResponseEntity<Empleado> findEmpleadoById(@PathVariable("id") Long id) {
		Empleado usuario = empleadoServices.findEmpleadoById(id);
		return new ResponseEntity<>(usuario, HttpStatus.OK);
	}
	
	
	@RequestMapping(value = "findByNombre/{nombre}", method = GET, produces = APPLICATION_JSON_VALUE)
	public ResponseEntity<List<Empleado>> findEmpleadoByName(@PathVariable("nombre") String cnombre){
		List<Empleado> empleado =  empleadoServices.findEmpleadoByName(cnombre);
		if(empleado== null)
			throw new ResourceNotFoundException("Empleado no encotrado para el nombre: "+cnombre);
		return new ResponseEntity<>(empleado, HttpStatus.OK);
	}
	
	
	@RequestMapping(value = "", method=RequestMethod.POST, produces = APPLICATION_JSON_VALUE)
	public ResponseEntity<Empleado> save(@Valid @RequestBody Empleado empleado){
		return new ResponseEntity<>(empleadoServices.save(empleado),HttpStatus.OK);
	}
	
	
	
	@DeleteMapping(path= "{id}")
	public ResponseEntity<String> delete(@PathVariable("id") Long id){
		empleadoServices.delete(id);
		return new ResponseEntity<>(new String("La Empleado "+id+" fue eliminada"),HttpStatus.OK);
	}
	
	
	@PutMapping(path = "")
	public ResponseEntity<Empleado> update(@RequestBody Empleado empleado){
		return new ResponseEntity<>(empleadoServices.save(empleado),HttpStatus.OK);
	}

}

