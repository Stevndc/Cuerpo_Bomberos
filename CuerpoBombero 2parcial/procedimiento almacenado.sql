
----Procedimiento almacenado que obtenga la cantidad de misiones que ha hecho un bombero por medio de su cedula .

create or replace function obtener_cantidad_misiones(
    IN bomberocedula numeric, 
    OUT total_misiones varchar
)
as $BODY$
begin
    select count(distinct bombero_misiones.mision_id) into total_misiones
	from bombero_misiones
	inner join bombero on bombero.bombero__id = bombero_misiones.bombero__id
	where _bombero_cedula = bomberocedula;
end
$BODY$ 
language plpgsql;

select * from obtener_cantidad_misiones(1309872678)