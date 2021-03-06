insert into CHANNEL (CHANNEL_ID, NAME) values ('MOBI', 'MOBILE');
insert into CHANNEL (CHANNEL_ID, NAME) values ('PC', 'COMPUTADOR');
insert into HOST_ID (HOST_ID) values ('LOCALHOST');
insert into HOST (COMPANY_ID, EXPIRED, HOST_ID, CREATED, ADDRESS, CHANNEL_ID, TIME_ZONE) values ('MXT', '9999-12-31 00:00:00', 'LOCALHOST', '2012-03-17 00:00:00', '127.0.0.1', 'PC', null);

insert into PROFILE_ID (PROFILE_ID) values ('ADM');
insert into PROFILE_ID (PROFILE_ID) values ('ASE');
insert into PROFILE_ID (PROFILE_ID) values ('CRD');
insert into PROFILE (COMPANY_ID, LANGUAGE_ID, PROFILE_ID, NAME, DESCRIPTION) values ('MXT', 'ES', 'ADM', 'ADMINISTRADOR', 'ADMINISTRADOR');
insert into PROFILE (COMPANY_ID, LANGUAGE_ID, PROFILE_ID, NAME, DESCRIPTION) values ('MXT', 'ES', 'ASE', 'ASESOR', 'ASESOR');
insert into PROFILE (COMPANY_ID, LANGUAGE_ID, PROFILE_ID, NAME, DESCRIPTION) values ('MXT', 'ES', 'CRD', 'COORDINADOR', 'COORDINADOR');

insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'ASE', 'A', '0', '01', '2012-03-28 11:54:10', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'ASE', 'A', '0', '02', '2012-03-28 11:54:10', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'ASE', 'A', '2', '05', '2012-03-28 11:54:10', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'ASE', 'B', '1', '01', '2012-03-28 12:03:06', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'ASE', 'B', '1', '02', '2012-03-28 12:03:06', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'ASE', 'B', '1', '03', '2012-03-28 12:03:06', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'ASE', 'C', '1', '06', '2012-04-17 17:15:00', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'ASE', 'C', '2', '01', '2012-03-28 12:03:06', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'ASE', 'C', '2', '02', '2012-03-28 12:03:06', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'ASE', 'C', '3', '01', '2012-03-28 12:03:06', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'ASE', 'C', '3', '02', '2012-03-28 12:03:06', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'ASE', 'C', '4', '01', '2012-03-28 12:03:06', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'ASE', 'C', '4', '02', '2012-03-28 12:03:06', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'ASE', 'C', '5', '02', '2012-03-28 12:03:06', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'ASE', 'C', '5', '03', '2012-03-28 12:03:06', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'ASE', 'C', '5', '04', '2012-04-23 14:58:16', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'CRD', 'A', '2', '03', '2012-04-17 15:58:18', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'CRD', 'A', '2', '04', '2012-04-17 15:58:19', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'CRD', 'A', '2', '05', '2012-04-17 15:58:19', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'CRD', 'A', '2', '06', '2012-04-17 16:13:35', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'CRD', 'A', '2', '07', '2012-04-17 15:58:19', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'CRD', 'B', '1', '01', '2012-04-17 15:58:19', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'CRD', 'B', '1', '02', '2012-04-17 15:58:19', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'CRD', 'B', '1', '03', '2012-04-17 15:58:19', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'CRD', 'C', '1', '01', '2012-04-17 16:02:57', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'CRD', 'C', '1', '02', '2012-04-17 15:58:19', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'CRD', 'C', '1', '03', '2012-04-17 16:02:57', null, null, null, '0');
insert into ROLE (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, CREATED, DAY_ID, HOUR_FROM, HOUR_TO, EDITABLE) values ('MXT', '9999-12-31 00:00:00', 'CRD', 'C', '1', '04', '2012-04-17 16:02:57', null, null, null, '0');

insert into USER_ACCOUNT_ID (USER_ID) values ('ADMIN');
insert into USER_ACCOUNT_ID (USER_ID) values ('JPEREZ');
insert into USER_ACCOUNT_ID (USER_ID) values ('MLOPEZ');
insert into USER_ACCOUNT (COMPANY_ID, EXPIRED, USER_ID, CREATED, NAME, USER_TYPE_ID, USER_STATUS_ID, LANGUAGE_ID, EMAIL, PERSON_ID, VERSION) values ('MXT', '9999-12-31 00:00:00', 'ADMIN', '2012-01-20 20:46:12', 'ADMINISTRATOR', 'SYS', 'ACT', 'ES', 'admin@mobile.com', null, 1);
insert into USER_ACCOUNT (COMPANY_ID, EXPIRED, USER_ID, CREATED, NAME, USER_TYPE_ID, USER_STATUS_ID, LANGUAGE_ID, EMAIL, PERSON_ID, VERSION) values ('MXT', '9999-12-31 00:00:00', 'JPEREZ', '2012-03-13 23:43:15', 'JUAN PEREZ', 'ASE', 'ACT', 'ES', 'jperez@mobile.com', null, 1);
insert into USER_ACCOUNT (COMPANY_ID, EXPIRED, USER_ID, CREATED, NAME, USER_TYPE_ID, USER_STATUS_ID, LANGUAGE_ID, EMAIL, PERSON_ID, VERSION) values ('MXT', '9999-12-31 00:00:00', 'MLOPEZ', '2012-04-01 13:39:54', 'MARÍA LOPEZ', 'ASE', 'ACT', 'ES', 'mlopez@mobile.com', null, 1);

insert into USER_ACCESS (COMPANY_ID, EXPIRED, USER_ID, CREATED, USER_KEY, LAST_CHANGE, QUESTION, ANSWER) values ('MXT', '9999-12-31 00:00:00', 'ADMIN', '2012-03-14 00:00:00', 'b34d7dbecec802e49a6cdb0d0a9334a5', '2012-03-14 00:00:00', null, null);
insert into USER_ACCESS (COMPANY_ID, EXPIRED, USER_ID, CREATED, USER_KEY, LAST_CHANGE, QUESTION, ANSWER) values ('MXT', '9999-12-31 00:00:00', 'JPEREZ', '2012-03-14 00:00:00', 'b34d7dbecec802e49a6cdb0d0a9334a5', '2012-03-14 00:00:00', null, null);
insert into USER_ACCESS (COMPANY_ID, EXPIRED, USER_ID, CREATED, USER_KEY, LAST_CHANGE, QUESTION, ANSWER) values ('MXT', '9999-12-31 00:00:00', 'MLOPEZ', '2012-03-14 00:00:00', 'b34d7dbecec802e49a6cdb0d0a9334a5', '2012-03-14 00:00:00', null, null);

insert into USER_PROFILE (COMPANY_ID, EXPIRED, USER_ID, PROFILE_ID, CREATED) values ('MXT', '9999-12-31 00:00:00', 'ADMIN', 'ADM', '2012-03-18 00:00:00');
insert into USER_PROFILE (COMPANY_ID, EXPIRED, USER_ID, PROFILE_ID, CREATED) values ('MXT', '9999-12-31 00:00:00', 'ADMIN', 'ASE', '2012-03-18 00:00:00');
insert into USER_PROFILE (COMPANY_ID, EXPIRED, USER_ID, PROFILE_ID, CREATED) values ('MXT', '9999-12-31 00:00:00', 'JPEREZ', 'ASE', '2012-03-18 00:00:00');
insert into USER_PROFILE (COMPANY_ID, EXPIRED, USER_ID, PROFILE_ID, CREATED) values ('MXT', '9999-12-31 00:00:00', 'MLOPEZ', 'ASE', '2012-03-18 00:00:00');

insert into PERSON_ID (PERSON_ID) values (1);
insert into PERSON_ID (PERSON_ID) values (2);
insert into PERSON (COMPANY_ID, EXPIRED, PERSON_ID, CREATED, NAME, LAST_NAME, SECOND_LAST_NAME, IDENTIFICATION_TYPE_ID, IDENTIFICATION_NUMBER, DATE_OF_BIRTH, GENDER_TYPE_ID, CIVIL_STATUS_ID, COUNTRY_ID, CITY_ID, PROVINCE_ID, DISTRICT_ID, PROFESSION_TYPE_ID, VERSION) values ('MXT', '9999-12-31 00:00:00', 1, '2012-03-13 23:46:56', 'RONALD MARCELO', 'GUALÁN', 'SAAVEDRA', 'CED', '1400658611', '1988-09-28 00:00:00', 'M', 'SOL', 'EC', 'CU', 'AZ', 'RIC', '101', 1);
insert into PERSON (COMPANY_ID, EXPIRED, PERSON_ID, CREATED, NAME, LAST_NAME, SECOND_LAST_NAME, IDENTIFICATION_TYPE_ID, IDENTIFICATION_NUMBER, DATE_OF_BIRTH, GENDER_TYPE_ID, CIVIL_STATUS_ID, COUNTRY_ID, CITY_ID, PROVINCE_ID, DISTRICT_ID, PROFESSION_TYPE_ID, VERSION) values ('MXT', '9999-12-31 00:00:00', 2, '2012-03-13 23:48:24', 'DIEGO FABIAN', 'MONTUFAR', null, 'CED', '0105362651', '1988-12-05 00:00:00', 'M', 'SOL', 'EC', 'CU', 'AZ', 'TOT', '103', 1);
update SEQUENTIAL set SEQUENTIAL_VALUE = 3 where SEQUENTIAL_ID = 'PERSON';

insert into PRODUCT_MICROCREDIT_ID (PRODUCT_ID) values ('M01');
insert into PRODUCT_MICROCREDIT_ID (PRODUCT_ID) values ('M02');
insert into PRODUCT_MICROCREDIT_ID (PRODUCT_ID) values ('M03');
insert into PRODUCT_MICROCREDIT (COMPANY_ID, LANGUAGE_ID, EXPIRED, PRODUCT_ID, CREATED, DESCRIPTION, CURRENCY_ID, MIN_AMOUNT, MAX_AMOUNT, MIN_PERIOD, MAX_PERIOD, RATE) values ('MXT', 'ES', '9999-12-31 00:00:00', 'M01', '2012-03-14 00:01:31', 'MICROCREDITO DE PRUEBA', 'USD', 10.000000, 500.000000, 7, 620, 10.000000);
insert into PRODUCT_MICROCREDIT (COMPANY_ID, LANGUAGE_ID, EXPIRED, PRODUCT_ID, CREATED, DESCRIPTION, CURRENCY_ID, MIN_AMOUNT, MAX_AMOUNT, MIN_PERIOD, MAX_PERIOD, RATE) values ('MXT', 'ES', '9999-12-31 00:00:00', 'M02', '2012-03-14 00:01:31', 'MICROCREDITO SOLIDARIO', 'USD', 10.000000, 50.000000, 7, 60, 9.450000);
insert into PRODUCT_MICROCREDIT (COMPANY_ID, LANGUAGE_ID, EXPIRED, PRODUCT_ID, CREATED, DESCRIPTION, CURRENCY_ID, MIN_AMOUNT, MAX_AMOUNT, MIN_PERIOD, MAX_PERIOD, RATE) values ('MXT', 'ES', '9999-12-31 00:00:00', 'M03', '2012-03-14 00:01:31', 'MICROCREDITO GANADERO', 'USD', 50.000000, 150.000000, 30, 360, 10.650000);


