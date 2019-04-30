package com.medra.neurologia.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import com.medra.neurologia.domain.Empleado;

public interface EmpleadoRepository extends PagingAndSortingRepository<Empleado, Long> {

	List<Empleado> findByNombreIgnoreCaseContaining(String nombre);
	
	@Query("from Empleado e where UPPER(CONCAT(e.apellido,' ', e.nombre)) like '%'||UPPER(:filtroNombreApellidoOrDni)||'%' OR CONCAT(e.dni, '') LIKE '%'||:filtroNombreApellidoOrDni||'%'")
	Page<Empleado> findByFilterAll(@Param("filtroNombreApellidoOrDni") String filtroNombreApellidoOrDni, Pageable pageable);
	
	@Query("from Empleado e where e.isProfesional = 1 and UPPER(CONCAT(e.apellido,' ', e.nombre)) like '%'||UPPER(:filtroNombreApellidoOrDni)||'%' OR CONCAT(e.dni, '') LIKE '%'||:filtroNombreApellidoOrDni||'%'")
	List<Empleado> findProfesionalesByFilter(@Param("filtroNombreApellidoOrDni") String filtroNombreApellidoOrDni);

	List<Empleado> findByIsProfesional(boolean b);

	Empleado findById(Long id);
}