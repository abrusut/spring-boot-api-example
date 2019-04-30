package com.medra.neurologia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.medra.neurologia.domain.Empleado;
import com.medra.neurologia.domain.Paciente;
import com.medra.neurologia.exception.ResourceNotFoundException;
import com.medra.neurologia.repository.EmpleadoRepository;

@Service
public class EmpleadoServices {

	@Autowired
	private EmpleadoRepository empleadoRepository;

	public void VerifyIfEmpleadoExist(Long id) {
		if (empleadoRepository.findOne(id) == null)
			throw new ResourceNotFoundException("Empleado no encotrada para el id: " + id);
	}

	public Page<Empleado> findAll(Pageable pageable) {
		return this.empleadoRepository.findAll(pageable);
	}
	
	public Empleado findEmpleadoById(Long id) {
		Empleado empleado = empleadoRepository.findById(id);
		return empleado;
	}

	public List<Empleado> findEmpleadoByName(String cnombre) {
		List<Empleado> empleados = empleadoRepository.findByNombreIgnoreCaseContaining(cnombre);
		return empleados;
	}


	public Empleado save(Empleado empleado) {
		return empleadoRepository.save(empleado);		
	}

	public void delete(Long id) {
		VerifyIfEmpleadoExist(id);
		empleadoRepository.delete(id);

	}

	public List<Empleado> findProfesionals() {
		return empleadoRepository.findByIsProfesional(true);
	}
	
	public Page<Empleado> findByFilterAll(String filtroNombreApellidoOrDni, Pageable pageable) {
		return this.empleadoRepository.findByFilterAll(filtroNombreApellidoOrDni,pageable);
	}
	
	public List<Empleado> findProfesionalesByFilter(String filtroNombreApellidoOrDni) {
		return this.empleadoRepository.findProfesionalesByFilter(filtroNombreApellidoOrDni);
	}

}
