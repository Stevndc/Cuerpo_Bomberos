/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     17/06/2021 02:58:16 p. m.                    */
/*==============================================================*/




/*==============================================================*/
/* Table: BOMBERO                                               */
/*==============================================================*/
create table BOMBERO (
   BOMBERO__ID          NUMERIC(7)           not null,
   _RANGO_ID            NUMERIC(5)           null,
   _ESTACION_ID         NUMERIC(5)           null,
   _TIPO_ID             NUMERIC(7)           null,
   VEHICULO_ID          NUMERIC(7)           null,
   BOMBERO_NOMBRE       VARCHAR(30)          null,
   BOMBERO_APELLIDO     VARCHAR(30)          null,
   _BOMBERO_CEDULA      NUMERIC(10)          null,
   _BOMBERO_CORREO      VARCHAR(30)          null,
   _BOMBERO_TELEFONO    NUMERIC(10)          null,
   _BOMBERO_TELEFONOFAMI NUMERIC(10)          null,
   BOMBERO_FECHANACIMIENTO DATE                 null,
   _BOMBERO_TIPOSANGRE  VARCHAR(30)          null,
   constraint PK_BOMBERO primary key (BOMBERO__ID)
);

 

/*==============================================================*/
/* Table: BOMBERO_MISIONES                                      */
/*==============================================================*/
create table BOMBERO_MISIONES (
   MISION_ID            NUMERIC(7)           not null,
   BOMBERO__ID          NUMERIC(7)           not null,
   constraint PK_BOMBERO_MISIONES primary key (MISION_ID, BOMBERO__ID)
);

 

/*==============================================================*/
/* Table: BOMBONAS                                              */
/*==============================================================*/
create table BOMBONAS (
   BOMBONAS_ID          NUMERIC(5)           not null,
   _ESTACION_ID         NUMERIC(5)           null,
   BOMBONAS_UBICACIOON  VARCHAR(30)          null,
   BOMBONAS_FECHA_INSTALACION DATE                 null,
   BOMBONAS_FECHA_MANTENIMIENTO DATE                 null,
   constraint PK_BOMBONAS primary key (BOMBONAS_ID)
);

 

/*==============================================================*/
/* Table: CURSOS                                                */
/*==============================================================*/
create table CURSOS (
   _CURSO_ID            NUMERIC(7)           not null,
   _RANGO_ID            NUMERIC(5)           null,
   _CURSO_NOMBRE  VARCHAR(90)          null,
   _CURSO_FECHA_INICIO     DATE                 null,
   CURSO_FECHA_FIN      DATE                 null,
   CURSO_HORAS          NUMERIC(7)                null,
   CURSO_INSTITUCION    VARCHAR(30)          null,
   constraint PK_CURSOS primary key (_CURSO_ID)
);



/*==============================================================*/
/* Table: DANOS_BOMBEROS                                        */
/*==============================================================*/
create table DANOS_BOMBEROS (
   DANO_ID              NUMERIC(7)           not null,
   BOMBERO__ID          NUMERIC(7)           null,
   _DANO_DESCRIPCION    VARCHAR(30)          null,
   constraint PK_DANOS_BOMBEROS primary key (DANO_ID)
);

 

/*==============================================================*/
/* Table: ESTACION                                              */
/*==============================================================*/
create table ESTACION (
   _ESTACION_ID         NUMERIC(5)           not null,
   ESTACION_DIRECCION   VARCHAR(50)          null,
   _ESTACION_TELEFONO   NUMERIC(10)          null,
   constraint PK_ESTACION primary key (_ESTACION_ID)
);

 

/*==============================================================*/
/* Table: LLAMADAS_USUARIO                                      */
/*==============================================================*/
create table LLAMADAS_USUARIO (
   LLAMADA_ID           NUMERIC(7)           not null,
   BOMBERO__ID          NUMERIC(7)           null,
   _LLAMA_ESTADO        VARCHAR(20)          null,
   LLAMADA_NOMBRE_USUARIO VARCHAR(30)          null,
   LLAMADA_APELLIDO_USUARIO VARCHAR(30)          null,
   constraint PK_LLAMADAS_USUARIO primary key (LLAMADA_ID)
);

 ;

/*==============================================================*/
/* Table: MANTENIMIENTO                                         */
/*==============================================================*/
create table MANTENIMIENTO (
   MANTENIMIENTO_ID     NUMERIC(7)           not null,
   BOMBERO__ID          NUMERIC(7)           null,
   VEHICULO_ID          NUMERIC(7)           null,
   _MANTENIMIENTO_FECHA DATE                 null,
   constraint PK_MANTENIMIENTO primary key (MANTENIMIENTO_ID)
);

 

/*==============================================================*/
/* Table: MANTENIMIENTO_DE_ORGANIZACION                         */
/*==============================================================*/
create table MANTENIMIENTO_DE_ORGANIZACION (
   MANTE__ORGANIZACIONID NUMERIC(7)           not null,
   VEHICULO_ID          NUMERIC(7)           null,
   _MANTE_INSTITUCIONAL_NOMBRE VARCHAR(50)          null,
   MANTE_ORGANIZACION_FECHA DATE          null,
   MATE_ORGANIZACION_COSTO DECIMAL              null,
   MANTE_ORGANIZACION_DESCRIPCION VARCHAR(100)          null,
   constraint PK_MANTENIMIENTO_DE_ORGANIZACI primary key (MANTE__ORGANIZACIONID)
);

 
/*==============================================================*/
/* Table: MANTENIMIENTO_UNIDAD                                  */
/*==============================================================*/
create table MANTENIMIENTO_UNIDAD (
   MATENIMIENTO_UNIDAD_ID  NUMERIC(7)        not null,
   BOMBERO__ID          NUMERIC(7)           null,
   _TIPO_ID             NUMERIC(7)           null,
    MATENIMIENTO_UNIDAD_FECHA DATE            null,
    constraint PK_MANTENIMIENTO_UNIDAD primary key (MATENIMIENTO_UNIDAD_ID)
);

 

/*==============================================================*/
/* Table: MISIONES_                                             */
/*==============================================================*/
create table MISIONES_ (
   MISION_ID            NUMERIC(7)           not null,
   _MISION_REPORTEFECHA DATE                 null,
   _MISION_REPORTEHORA  TIME                 null,
   MISION_MOTIVO_SINIESTRO VARCHAR(50)          null,
   MISION_VICTIMAS_MORTALES NUMERIC              null,
   MISION_RESCATADOS    NUMERIC              null,
   constraint PK_MISIONES_ primary key (MISION_ID)
);

 

/*==============================================================*/
/* Table: RANGO                                                 */
/*==============================================================*/
create table RANGO (
   _RANGO_ID            NUMERIC(5)           not null,
   _RANGO_              VARCHAR(30)          null,
   constraint PK_RANGO primary key (_RANGO_ID)
);

 

/*==============================================================*/
/* Table: SECTORES_MANTA                                        */
/*==============================================================*/
create table SECTORES_MANTA (
   _SECTOR_ID           NUMERIC(7)           not null,
   MISION_ID            NUMERIC(7)           null,
   _SECTOR_NOMBRE       VARCHAR(30)          null,
   constraint PK_SECTORES_MANTA primary key (_SECTOR_ID)
);

 
/*==============================================================*/
/* Table: TIPO_PERSONAL                                         */
/*==============================================================*/
create table TIPO_PERSONAL (
   _TIPO_ID             NUMERIC(7)           not null,
   _TIPO_UNIDAD         VARCHAR(30)          null,
   _TIPO_CARGO          VARCHAR(30)          null,
   constraint PK_TIPO_PERSONAL primary key (_TIPO_ID)
);

 

/*==============================================================*/
/* Table: VEHICULO                                              */
/*==============================================================*/
create table VEHICULO (
   VEHICULO_ID          NUMERIC(7)           not null,
   _ESTACION_ID         NUMERIC(5)           null,
   _VEHICULO_MARCA      VARCHAR(30)          null,
   VEHICULO_MARCA       VARCHAR(30)          null,
   _VEHICULO_TIPO       VARCHAR(30)          null,
   constraint PK_VEHICULO primary key (VEHICULO_ID)
);
 

alter table BOMBERO
   add constraint FK_BOMBERO_PERTENECE_TIPO_PER foreign key (_TIPO_ID)
      references TIPO_PERSONAL (_TIPO_ID)
      on delete restrict on update restrict;

alter table BOMBERO
   add constraint FK_BOMBERO_POSEE_ESTACION foreign key (_ESTACION_ID)
      references ESTACION (_ESTACION_ID)
      on delete restrict on update restrict;

alter table BOMBERO
   add constraint FK_BOMBERO_RELATIONS_RANGO foreign key (_RANGO_ID)
      references RANGO (_RANGO_ID)
      on delete restrict on update restrict;

alter table BOMBERO
   add constraint FK_BOMBERO_TRANSPORT_VEHICULO foreign key (VEHICULO_ID)
      references VEHICULO (VEHICULO_ID)
      on delete restrict on update restrict;

alter table BOMBERO_MISIONES
   add constraint FK_BOMBERO__ASISTE_MISIONES foreign key (MISION_ID)
      references MISIONES_ (MISION_ID)
      on delete restrict on update restrict;

alter table BOMBERO_MISIONES
   add constraint FK_BOMBERO__ASISTE2_BOMBERO foreign key (BOMBERO__ID)
      references BOMBERO (BOMBERO__ID)
      on delete restrict on update restrict;

alter table BOMBONAS
   add constraint FK_BOMBONAS_CONSERVA_ESTACION foreign key (_ESTACION_ID)
      references ESTACION (_ESTACION_ID)
      on delete restrict on update restrict;

alter table CURSOS
   add constraint FK_CURSOS_APLICA_RANGO foreign key (_RANGO_ID)
      references RANGO (_RANGO_ID)
      on delete restrict on update restrict;

alter table DANOS_BOMBEROS
   add constraint FK_DANOS_BO_SUFRE_BOMBERO foreign key (BOMBERO__ID)
      references BOMBERO (BOMBERO__ID)
      on delete restrict on update restrict;

alter table LLAMADAS_USUARIO
   add constraint FK_LLAMADAS_ATIENDE_BOMBERO foreign key (BOMBERO__ID)
      references BOMBERO (BOMBERO__ID)
      on delete restrict on update restrict;

alter table MANTENIMIENTO
   add constraint FK_MANTENIM_REALIZA_BOMBERO foreign key (BOMBERO__ID)
      references BOMBERO (BOMBERO__ID)
      on delete restrict on update restrict;

alter table MANTENIMIENTO
   add constraint FK_MANTENIM_RECIBE_VEHICULO foreign key (VEHICULO_ID)
      references VEHICULO (VEHICULO_ID)
      on delete restrict on update restrict;

alter table MANTENIMIENTO_DE_ORGANIZACION
   add constraint FK_MANTENIM_ADOPTA_VEHICULO foreign key (VEHICULO_ID)
      references VEHICULO (VEHICULO_ID)
      on delete restrict on update restrict;

alter table MANTENIMIENTO_UNIDAD
   add constraint FK_MANTENIM_ACOJE_TIPO_PER foreign key (_TIPO_ID)
      references TIPO_PERSONAL (_TIPO_ID)
      on delete restrict on update restrict;

alter table MANTENIMIENTO_UNIDAD
   add constraint FK_MANTENIM_EJECUTA_BOMBERO foreign key (BOMBERO__ID)
      references BOMBERO (BOMBERO__ID)
      on delete restrict on update restrict;

alter table SECTORES_MANTA
   add constraint FK_SECTORES_ACUDEN_MISIONES foreign key (MISION_ID)
      references MISIONES_ (MISION_ID)
      on delete restrict on update restrict;

 

alter table VEHICULO
   add constraint FK_VEHICULO_TIENE_ESTACION foreign key (_ESTACION_ID)
      references ESTACION (_ESTACION_ID)
      on delete restrict on update restrict;





--Insertar datos

INSERT INTO ESTACION VALUES(1,'Calle 12 y Avenida 11',052621777,);
INSERT INTO ESTACION VALUES(2,'Parroquia Tarqui,Calle 104',052610300);
INSERT INTO ESTACION VALUES(3,'Parroquia Eloy Alfaro C.319',052926637);
INSERT INTO ESTACION VALUES(4,'Barrio Cordova,Calle8',052610400);
INSERT INTO ESTACION VALUES(5,'Parroquia Los Esteros',052384896);
INSERT INTO ESTACION VALUES(6,'Via San Mateo',052678170);

INSERT INTO BOMBONAS VALUES(1,1,'Calle 11 y Avenida 9','18/12/2005','20/12/2020');
INSERT INTO BOMBONAS VALUES(2,2,'Calle 124 y Avenida 10','23/12/2008','32/12/2019');
INSERT INTO BOMBONAS VALUES(3,3,'Calle 308 y Avenida 30','29/12/2001','18/12/2020');
INSERT INTO BOMBONAS VALUES(4,4,'Calle 20 y Avenida 4','22/12/2004','28/12/2019');
INSERT INTO BOMBONAS VALUES(5,5,'Calle 78 y Avenida 9','10/12/2011','18/12/2020');
INSERT INTO BOMBONAS VALUES(6,6,'Calle 118 y Avenida 7','30/12/2008','18/12/2020');

INSERT INTO VEHICULO VALUES(1,1,'MED-100','D-MAX','CAMIONETA DC');
INSERT INTO VEHICULO VALUES(2,1,'MED-101','INTERNATIONAL','MOTOBOMBA');
INSERT INTO VEHICULO VALUES(3,5,'MED-102','FORD-350','FURGONETA');
INSERT INTO VEHICULO VALUES(4,2,'MED-103','HINO-500','MOTOBOMBA');
INSERT INTO VEHICULO VALUES(5,2,'MED-104','TOYOTA-FJ-CRUISER','AMBULANCIA');
INSERT INTO VEHICULO VALUES(6,3,'MED-105','MERCEDES-BENZ','FURGONETA');
INSERT INTO VEHICULO VALUES(7,4,'MED-106','HIUNDAY-H1','FURGONETA');
INSERT INTO VEHICULO VALUES(8,1,'MED-107','VOLVO','CARRO ESCALERA');
INSERT INTO VEHICULO VALUES(9,6,'MED-108','SUZUKI','YATE');
INSERT INTO VEHICULO VALUES(10,6,'MED-109','INTERNATIONAL','MOTOBOMBA');
INSERT INTO VEHICULO VALUES(11,3,'MED-110','D-MAX','CAMIONETA DC');
INSERT INTO VEHICULO VALUES(12,1,'MED-111','D-MAX','CAMIONETA DC');
INSERT INTO VEHICULO VALUES(13,2,'MED-112','TOYOTA-FJ-CRUISER','AMBULANCIA');
INSERT INTO VEHICULO VALUES(14,6,'MED-113','HIUNDAY-H1','AMBULANCIA');
INSERT INTO VEHICULO VALUES(15,6,'MED-114','D-MAX','CAMIONETA DC');

INSERT INTO MANTENIMIENTO_DE_ORGANIZACION VALUES(1,1,"Autoimport SCC",'18/12/2019',150.80,"Reparacion de neumaticos");
INSERT INTO MANTENIMIENTO_DE_ORGANIZACION VALUES(2,2,"Frenoseguro",'20/12/2020',250.30,"Reparacion de filtro Combustible");
INSERT INTO MANTENIMIENTO_DE_ORGANIZACION VALUES(3,3,"J.B/Climatización",'14/08/2019',200.50,"Reparacion del aire acondicionado");
INSERT INTO MANTENIMIENTO_DE_ORGANIZACION VALUES(4,4,"Tecnicentro Frenar,'25/12/2020',190.20,"Reparacion de frenos");


 

 