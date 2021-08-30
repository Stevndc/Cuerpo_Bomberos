 --Trigger que no permita aggregar nuevos bomberos cuando sus estaciones tengan el personal completo.

CREATE OR REPLACE FUNCTION  limite() RETURNS TRIGGER                                                 
AS
$limite$ 
  DECLARE
    cantidad int;
    ful int;
BEGIN
   select count(*) into cantidad from BOMBERO where _estacion_id=new._estacion_id;
   select estacion_personal into ful from ESTACION;
   if ( cantidad >= ful ) then
   RAISE EXCEPTION 'No se puede agregar mas Bomberos a esta estacion, personal completo';
   END if;
   RETURN new;
END;
$limite$
LANGUAGE plpgsql;
--..--
create trigger limite before insert
on BOMBERO fOR EACH ROW
execute procedure limite();
--INSERTAR DATOS VERIFICAR TRIGGER
INSERT INTO bombero VALUES ( 25, 1 , 1 , 1, 10,  ' MAURICIO ' , ' MORA ' , 1309872678 , ' mauricio@gmail.com ', 0913445666,0912397546,' 01/12/1981 ','A NEGATIVO' );