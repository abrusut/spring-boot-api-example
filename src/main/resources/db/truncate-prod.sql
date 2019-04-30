-- TRUNCATE DATABASE

use neurodb;

SET FOREIGN_KEY_CHECKS = 0; 
 
TRUNCATE TABLE turno;
TRUNCATE TABLE schedule_day;
-- TRUNCATE TABLE actividad;
-- TRUNCATE TABLE empleado;
-- TRUNCATE TABLE empleado_actividades;
-- TRUNCATE TABLE hibernate_sequences;
-- TRUNCATE TABLE obra_social;
TRUNCATE TABLE observacion;
TRUNCATE TABLE paciente;
TRUNCATE TABLE schedule;

SET FOREIGN_KEY_CHECKS = 1;