/*===========================================================================================
	Proyecto					:	Evaluación
	Modulo						:	SPR - Procedimiento/Funcion
	Programa/Funcion			:	 
	Analista					:	ALDV
	Fecha Inicio/Termino		:	06Jun2020
	Objetivo					:	Procedimiento Crear y Ejecutar
	Descripcion					:	
=============================================================================================*/
DROP FUNCTION IF EXISTS mostrarFecha;

CREATE OR REPLACE FUNCTION public.mostrarFecha
(
	text
)
RETURNS SETOF RECORD
LANGUAGE 'plpgsql'
AS $aldv$
BEGIN 
       RETURN QUERY EXECUTE $1 ; 
END 
$aldv$

-- Ejecutar el procedimiento
-- SELECT * FROM mostrarFecha('select now()') as fecha(dt timestamptz)