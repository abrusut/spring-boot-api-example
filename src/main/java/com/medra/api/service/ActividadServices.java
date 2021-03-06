package com.medra.api.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.medra.api.domain.Actividad;
import com.medra.api.exception.BusinessException;
import com.medra.api.exception.ResourceNotFoundException;
import com.medra.api.repository.ActividadRepository;

@Service
public class ActividadServices {

	@Autowired
	private ActividadRepository actividadRepository;

	public void VerifyIfActividadExist(Long id) {
		if (actividadRepository.findById(id) == null)
			throw new ResourceNotFoundException("Actividad no encotrada para el id: " + id);
	}

	public Iterable<Actividad> findAll() {
		return this.actividadRepository.findAll();
	}

	public Actividad findActividadById(Long id) {
		VerifyIfActividadExist(id);
		Optional<Actividad> actividad = actividadRepository.findById(id);
		if(!actividad.isPresent()) {
			throw new BusinessException(4004, "La actividad a eliminar no existe");
		}
		return actividad.get();
	}

	public List<Actividad> findActividadByName(String cnombre) {
		List<Actividad> actividads = actividadRepository.findByNombreIgnoreCaseContaining(cnombre);
		return actividads;
	}
	
	public Actividad findByNombre(String cnombre) {
		Actividad actividad = actividadRepository.findByNombre(cnombre);
		return actividad;
	}


	public Actividad save(Actividad actividad) {
		return actividadRepository.save(actividad);		
	}

	public void delete(Long id) {
		VerifyIfActividadExist(id);
		actividadRepository.deleteById(id);

	}

}
