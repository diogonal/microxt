insert into ADDRESS_TYPE_ID (ADDRESS_TYPE_ID) values ('CE');
insert into ADDRESS_TYPE_ID (ADDRESS_TYPE_ID) values ('HA');
insert into ADDRESS_TYPE_ID (ADDRESS_TYPE_ID) values ('ML');
insert into ADDRESS_TYPE_ID (ADDRESS_TYPE_ID) values ('TR');
insert into ADDRESS_TYPE_ID (ADDRESS_TYPE_ID) values ('WE');

insert into ADDRESS_TYPE (COMPANY_ID, LANGUAGE_ID, ADDRESS_TYPE_ID, NAME) values ('MXT', 'ES', 'CE', 'CORREO ELECTRÓNICO');
insert into ADDRESS_TYPE (COMPANY_ID, LANGUAGE_ID, ADDRESS_TYPE_ID, NAME) values ('MXT', 'ES', 'HA', 'DOMICILIO');
insert into ADDRESS_TYPE (COMPANY_ID, LANGUAGE_ID, ADDRESS_TYPE_ID, NAME) values ('MXT', 'ES', 'ML', 'CORREO');
insert into ADDRESS_TYPE (COMPANY_ID, LANGUAGE_ID, ADDRESS_TYPE_ID, NAME) values ('MXT', 'ES', 'TR', 'LUGAR DE TRABAJO');
insert into ADDRESS_TYPE (COMPANY_ID, LANGUAGE_ID, ADDRESS_TYPE_ID, NAME) values ('MXT', 'ES', 'WE', 'PAGINA WEB');



insert into CIVIL_STATUS_ID (CIVIL_STATUS_ID) values ('CAS');
insert into CIVIL_STATUS_ID (CIVIL_STATUS_ID) values ('DIV');
insert into CIVIL_STATUS_ID (CIVIL_STATUS_ID) values ('SEP');
insert into CIVIL_STATUS_ID (CIVIL_STATUS_ID) values ('SOL');
insert into CIVIL_STATUS_ID (CIVIL_STATUS_ID) values ('UNI');
insert into CIVIL_STATUS_ID (CIVIL_STATUS_ID) values ('VIU');

insert into CIVIL_STATUS (COMPANY_ID, LANGUAGE_ID, CIVIL_STATUS_ID, NAME) values ('MXT', 'ES', 'CAS', 'CASADO');
insert into CIVIL_STATUS (COMPANY_ID, LANGUAGE_ID, CIVIL_STATUS_ID, NAME) values ('MXT', 'ES', 'DIV', 'DIVORCIADO');
insert into CIVIL_STATUS (COMPANY_ID, LANGUAGE_ID, CIVIL_STATUS_ID, NAME) values ('MXT', 'ES', 'SEP', 'SEPARADO');
insert into CIVIL_STATUS (COMPANY_ID, LANGUAGE_ID, CIVIL_STATUS_ID, NAME) values ('MXT', 'ES', 'SOL', 'SOLTERO');
insert into CIVIL_STATUS (COMPANY_ID, LANGUAGE_ID, CIVIL_STATUS_ID, NAME) values ('MXT', 'ES', 'UNI', 'UNION LIBRE');
insert into CIVIL_STATUS (COMPANY_ID, LANGUAGE_ID, CIVIL_STATUS_ID, NAME) values ('MXT', 'ES', 'VIU', 'VIUDO');

insert into GENDER_TYPE_ID (GENDER_TYPE_ID) values ('F');
insert into GENDER_TYPE_ID (GENDER_TYPE_ID) values ('M');

insert into GENDER_TYPE (LANGUAGE_ID, GENDER_TYPE_ID, NAME) values ('ES', 'F', 'FEMENINO');
insert into GENDER_TYPE (LANGUAGE_ID, GENDER_TYPE_ID, NAME) values ('ES', 'M', 'MASCULINO');

insert into IDENTIFICATION_TYPE_ID (IDENTIFICATION_TYPE_ID) values ('CED');
insert into IDENTIFICATION_TYPE_ID (IDENTIFICATION_TYPE_ID) values ('RUC');
insert into IDENTIFICATION_TYPE_ID (IDENTIFICATION_TYPE_ID) values ('PER');
insert into IDENTIFICATION_TYPE_ID (IDENTIFICATION_TYPE_ID) values ('PSE');

insert into IDENTIFICATION_TYPE (COMPANY_ID, LANGUAGE_ID, IDENTIFICATION_TYPE_ID, NAME) values ('MXT', 'ES', 'CED', 'CEDULA DE IDENTIDAD');
insert into IDENTIFICATION_TYPE (COMPANY_ID, LANGUAGE_ID, IDENTIFICATION_TYPE_ID, NAME) values ('MXT', 'ES', 'PER', 'PERSONA SIN IDENTIFICACION');
insert into IDENTIFICATION_TYPE (COMPANY_ID, LANGUAGE_ID, IDENTIFICATION_TYPE_ID, NAME) values ('MXT', 'ES', 'PSE', 'PASAPORTE EXTRANJERO');
insert into IDENTIFICATION_TYPE (COMPANY_ID, LANGUAGE_ID, IDENTIFICATION_TYPE_ID, NAME) values ('MXT', 'ES', 'RUC', 'RUC');

INSERT INTO PERSON_TYPE_ID (PERSON_TYPE_ID) VALUES ('JUR'), ('NAT');
INSERT INTO PERSON_TYPE (COMPANY_ID, LANGUAGE_ID, PERSON_TYPE_ID, NAME) VALUES ('MXT', 'ES', 'JUR', 'JURIDICA'), ('MXT', 'ES', 'NAT', 'NATURAL');


INSERT INTO PHONE_TYPE_ID (PHONE_TYPE_ID) VALUES ('CEL');
INSERT INTO PHONE_TYPE_ID (PHONE_TYPE_ID) VALUES ('FAX');
INSERT INTO PHONE_TYPE_ID (PHONE_TYPE_ID) VALUES ('TEL');
INSERT INTO PHONE_TYPE_ID (PHONE_TYPE_ID) VALUES ('C/W');
INSERT INTO PHONE_TYPE_ID (PHONE_TYPE_ID) VALUES ('ALE');
INSERT INTO PHONE_TYPE_ID (PHONE_TYPE_ID) VALUES ('MOV');
INSERT INTO PHONE_TYPE_ID (PHONE_TYPE_ID) VALUES ('POR');
INSERT INTO PHONE_TYPE_ID (PHONE_TYPE_ID) VALUES ('TFX');

INSERT INTO PHONE_TYPE (COMPANY_ID, LANGUAGE_ID,PHONE_TYPE_ID,NAME) VALUES ('MXT','ES','CEL','CELULAR');
INSERT INTO PHONE_TYPE (COMPANY_ID, LANGUAGE_ID,PHONE_TYPE_ID,NAME) VALUES ('MXT','ES','FAX','FAX');
INSERT INTO PHONE_TYPE (COMPANY_ID, LANGUAGE_ID,PHONE_TYPE_ID,NAME) VALUES ('MXT','ES','TEL','TELEFONO NOR');
INSERT INTO PHONE_TYPE (COMPANY_ID, LANGUAGE_ID,PHONE_TYPE_ID,NAME) VALUES ('MXT','ES','C/W','CABLE / WIRL');
INSERT INTO PHONE_TYPE (COMPANY_ID, LANGUAGE_ID,PHONE_TYPE_ID,NAME) VALUES ('MXT','ES','ALE','ALEGRO');
INSERT INTO PHONE_TYPE (COMPANY_ID, LANGUAGE_ID,PHONE_TYPE_ID,NAME) VALUES ('MXT','ES','MOV','MOVISTAR');
INSERT INTO PHONE_TYPE (COMPANY_ID, LANGUAGE_ID,PHONE_TYPE_ID,NAME) VALUES ('MXT','ES','POR','CLARO');
INSERT INTO PHONE_TYPE (COMPANY_ID, LANGUAGE_ID,PHONE_TYPE_ID,NAME) VALUES ('MXT','ES','TFX','TELEFONO Y FAX');


insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('1');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('2');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('3');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('4');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('5');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('6');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('7');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('8');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('9');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('10');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('11');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('12');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('13');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('14');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('15');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('16');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('17');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('18');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('19');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('20');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('21');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('22');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('23');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('24');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('25');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('26');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('27');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('28');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('29');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('30');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('31');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('32');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('33');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('34');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('35');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('36');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('37');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('38');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('39');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('40');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('41');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('42');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('43');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('44');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('45');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('46');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('47');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('48');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('49');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('50');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('51');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('52');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('53');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('54');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('55');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('56');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('57');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('58');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('59');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('60');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('61');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('62');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('63');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('64');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('65');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('66');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('67');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('68');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('69');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('70');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('71');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('72');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('73');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('74');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('75');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('76');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('77');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('78');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('79');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('80');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('81');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('82');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('83');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('84');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('85');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('86');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('87');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('88');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('89');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('90');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('91');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('92');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('93');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('94');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('95');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('96');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('97');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('98');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('99');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('100');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('101');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('102');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('103');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('104');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('105');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('106');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('107');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('108');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('109');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('110');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('111');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('112');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('113');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('114');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('115');
insert into PROFESSION_TYPE_ID (PROFESSION_TYPE_ID) values ('116');


insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','1','ABOGADO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','2','ACTOR/ACTRIZ DRAMATICO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','3','ADMINISTRADOR');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','4','AGENTE DE RENTAS INTERNAS');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','5','AGENTE DE SEGUROS');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','6','AGENTE DE VIAJES');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','7','AGRICULTOR');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','8','AGRONOMO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','9','ALBAÑIL');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','10','AMA DE CASA');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','11','AMA DE LLAVES');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','12','ANALISTA DE SISTEMAS');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','13','ARQUEOLOGO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','14','ARQUITECTO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','15','ARTESANO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','16','ARTISTA COMERCIAL');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','17','ARTISTA GRAFICO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','18','ASISTENTE ADMINISTRATIVO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','19','ASISTENTE DE GERENTE');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','20','ASISTENTE DE MAESTRO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','21','ASISTENTE DE PROTECCION AMBIENTAL');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','22','ASISTENTE DE SEGURIDAD');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','23','AYUDANTE GENERAL');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','24','BARBERO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','25','BENEFICIARIO DE SEGURO SOCIAL');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','26','BIENES RAICES');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','27','BOMBERO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','28','CAJERO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','29','CAPATAZ');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','30','CARNICERO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','31','CARPINTERO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','32','CARTERO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','33','CHOFER');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','34','COBRADOR');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','35','COMERCIANTE');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','36','CONSERJE');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','37','CONTADOR');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','38','COSTURERA');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','39','DENTISTA');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','40','DESEMPLEADO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','41','DINAMITERO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','42','DIRECTOR ESCOLAR');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','43','DISEÑADOR');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','44','DUEÑO TALLER');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','45','DUEÑO TALLER REJAS');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','46','DUEÑO TIENDA');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','47','DUEÑO COMPANIA CONSTRUCCION');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','48','DUEÑO DE RESTAURANTE');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','49','DUEÑO RESTAURANTE MOBIL');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','50','DUEÑO SUPERMERCADO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','51','EBANISTA');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','52','ECONOMISTA');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','53','ELECTRICISTA');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','54','EMPACADOR');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','55','EMPLEADO DE ALMACEN');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','56','EMPLEADO DE CONSTRUCCION');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','57','EMPLEADO DE MANTENIMIENTO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','58','EMPLEADO DE MUEBLERIA');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','59','EMPLEADO DE OBRAS PUBLICAS');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','60','EMPLEADO DE RESTAURANTE');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','61','EMPLEADO DE SUPERMERCADO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','62','EMPLEADO DOMESTICO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','63','ENCARGADA DE COMEDOR ESCOLAR');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','64','ENFERMERA');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','65','ESCULTOR');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','66','ESTUDIANTE');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','67','EXCAVADOR');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','68','FARMACEUTICO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','69','FERRETERIA');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','70','FUMIGADOR');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','71','GUARDA BOSQUES');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','72','GUARDIA DE SEGURIDAD');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','73','GUARDIA ESCOLAR');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','74','HIDROLOGO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','75','HOJALATERO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','76','INCAPACITADO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','77','INGENIERO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','78','INSTALADOR');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','79','JARDINERO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','80','LAVAPLATOS');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','81','MAESTRO DE ESCUELA');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','82','MATEMATICO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','83','MECANICO DE AUTOS');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','84','MECANICO INDUSTRIAL');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','85','MEDICO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','86','MENOR DE EDAD');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','87','MENSAJERO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','88','MODISTA');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','89','MOZO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','90','MUSICO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','91','OFICINISTA');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','92','OPERADOR DE MAQUINARIA');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','93','OPERADOR EQUIPO PESADO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','94','PESCADOR');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','95','PINTOR');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','96','PLOMERO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','97','PROFESOR UNIVERSITARIO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','98','PROGRAMADOR DE COMPUTADORAS');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','99','PSICOLOGO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','100','PUBLICISTA');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','101','QUIMICO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','102','RECEPCIONISTA');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','103','RELACIONISTA PUBLICO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','104','RELOJERO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','105','REPORTERO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','106','REPOSTERO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','107','RETIRADO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','108','SACERDOTE');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','109','SECRETARIA');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','110','SOLDADOR');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','111','SUPERVISOR');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','112','TECNICO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','113','TECNOLOGO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','114','VENDEDOR BILLETES DE LOTERIA');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','115','VETERINARIO');
insert into PROFESSION_TYPE (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID, NAME) values ('MXT','ES','116','ZAPATERO');


