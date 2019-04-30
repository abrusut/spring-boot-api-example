package com.medra.api.repository;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.medra.api.domain.Actividad;

public interface ActividadRepository extends PagingAndSortingRepository<Actividad, Long> {

	List<Actividad> findByNombreIgnoreCaseContaining(String nombre);

	Actividad findByNombre(String cnombre);
	
}