----Cursor que muestre el número de Bomberos que pertenecen a un puesto institucional (Cargo) en una estación de Manta.

do $$
declare 
c_bomberos int = 0;
asignado record;
max int;
--creacion del cursor
PIB cursor for select * from tipo_personal,estacion,bombero
where tipo_personal._estacion_id = estacion._estacion_id and estacion._estacion_id =
bombero._estacion_id and estacion_personal = 8  and estacion_direccion like '%Pa%';
begin
for max in PIB
loop
c_bomberos = c_bomberos + count(max._estacion_id);
end loop; 

open PIB;
fetch PIB into asignado;
Raise notice 'PUESTO_INSTITUCIONAL: %, CARGO: % , DIRECCION: % , CANTIDAD: %  ', 
asignado._tipo_unidad, asignado._tipo_cargo, asignado.estacion_direccion, c_bomberos;
end $$
language 'plpgsql';
