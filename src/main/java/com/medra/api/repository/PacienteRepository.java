package com.medra.neurologia.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import com.medra.neurologia.domain.Paciente;

public interface PacienteRepository extends PagingAndSortingRepository<Paciente, Long> {

	List<Paciente> findByNombreIgnoreCaseContaining(String nombre);

	@Query("from Paciente p where UPPER(CONCAT(p.apellido,' ', p.nombre)) like '%'||UPPER(:filtroNombreApellidoOrDni)||'%' OR CONCAT(p.dni, '') LIKE '%'||:filtroNombreApellidoOrDni||'%'")
	Page<Paciente> findByFilterAll(@Param("filtroNombreApellidoOrDni") String filtroNombreApellidoOrDni, Pageable pageable);
	
}