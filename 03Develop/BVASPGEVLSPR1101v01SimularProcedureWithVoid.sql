/*===========================================================================================
	Proyecto					:	Evaluación
	Modulo						:	SPR - Procedimiento/Funcion
	Programa/Funcion			:	 
	Analista					:	ALDV
	Fecha Inicio/Termino		:	06Jun2020
	Objetivo					:	Simular un procedimiento
	Descripcion					:	VOID posibilita que la funcion no retorne valores
=============================================================================================*/

CREATE OR REPLACE FUNCTION public.simularProcedure
(
	IN pTipoABM SMALLINT,
	IN pCodigoEmpresa		VARCHAR(02),
	text
)
RETURNS VOID
AS $aldv$
BEGIN 
	RAISE NOTICE 'Codigo Empresa ( % )', pCodigoEmpresa ;
	pTipoABM = '1';
    pCodigoEmpresa = '05';

END 
$aldv$
LANGUAGE 'plpgsql'

-- Ejecutar el procedimiento
-- select * from exec('select now()') as t(dt timestamptz)