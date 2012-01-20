
CREATE TABLE COMPANY (
	COMPANY_ID VARCHAR(4) NOT NULL,
	NAME VARCHAR(40) NOT NULL,
	DATAFILE_ID INTEGER,
	UPGRADE_NUMBER DECIMAL(4,2),
	LICENSE_DATE DATETIME,
	ENABLE VARCHAR(1) NOT NULL DEFAULT '0',
	PRIMARY KEY (COMPANY_ID)
);

CREATE TABLE DATABASE_TYPE (
	DATA_TYPE_ID VARCHAR(30) NOT NULL,
	DATABASE_ID VARCHAR(30) NOT NULL,
	DATA_SIZE SMALLINT NOT NULL,
	DATABASE_TYPE VARCHAR(30) NOT NULL,
	PRIMARY KEY (DATA_TYPE_ID, DATABASE_ID, DATA_SIZE)
);

CREATE TABLE DATA_TYPE (
	DATA_TYPE_ID VARCHAR(30) NOT NULL,
	DESCRIPTION VARCHAR(100) NOT NULL,
	PRIMARY KEY (DATA_TYPE_ID)
);

CREATE TABLE ENTITY_FIELD_ID (
	TABLE_ID VARCHAR(30) NOT NULL,
	FIELD_ID VARCHAR(30) NOT NULL,
	PRIMARY KEY (TABLE_ID, FIELD_ID)
);

CREATE TABLE ENTITY_FIELD (
	COMPANY_ID VARCHAR(4) NOT NULL,
	TABLE_ID VARCHAR(30) NOT NULL,
	FIELD_ID VARCHAR(30) NOT NULL,
	FIELD_ORDER TINYINT NOT NULL,
	DATA_TYPE_ID VARCHAR(30) NOT NULL,
	DATA_SIZE SMALLINT NOT NULL,
	DATA_SCALE TINYINT NOT NULL DEFAULT '0',
	PRIMARY_KEY VARCHAR(1) NOT NULL DEFAULT '0',
	UNIQUE_KEY VARCHAR(1) NOT NULL DEFAULT '0',
	NULLABLE VARCHAR(1) NOT NULL DEFAULT '0',
	DEFAULT_VALUE VARCHAR(30),
	SEQUENTIAL_ID VARCHAR(30),
	MINIMUM_VALUE VARCHAR(30),
	MAXIMUM_VALUE VARCHAR(30),
	DESCRIPTION VARCHAR(100),
	PRIMARY KEY (COMPANY_ID, TABLE_ID, FIELD_ID)
);

CREATE TABLE ENTITY_RELATIONSHIP (
	COMPANY_ID VARCHAR(4) NOT NULL,
	RELATIONSHIP_ID VARCHAR(30) NOT NULL,
	RELATIONSHIP_ORDER TINYINT NOT NULL,
	TABLE_FROM VARCHAR(30) NOT NULL,
	FIELD_FROM VARCHAR(30) NOT NULL,
	TABLE_TO VARCHAR(30) NOT NULL,
	FIELD_TO VARCHAR(30) NOT NULL,
	PRIMARY KEY (COMPANY_ID, RELATIONSHIP_ID, RELATIONSHIP_ORDER)
);

CREATE TABLE ENTITY_TABLE_ID (
	TABLE_ID VARCHAR(30) NOT NULL,
	PRIMARY KEY (TABLE_ID)
);

CREATE TABLE ENTITY_TABLE (
	COMPANY_ID VARCHAR(4) NOT NULL,
	TABLE_ID VARCHAR(30) NOT NULL,
	HAS_TABLE_ID VARCHAR(1) NOT NULL,
	PACKAGE_NAME VARCHAR(30) NOT NULL,
	MULTI_COMPANY VARCHAR(1) NOT NULL DEFAULT '0',
	MULTI_LANGUAGE VARCHAR(1) NOT NULL DEFAULT '0',
	HISTORICAL_DATA VARCHAR(1) NOT NULL DEFAULT '0',
	OPTIMISTIC_LOCKING VARCHAR(1) NOT NULL DEFAULT '0',
	ENUMERATED_TYPES VARCHAR(1) NOT NULL DEFAULT '0',
	CACHE_MEMORY VARCHAR(1) NOT NULL DEFAULT '0',
	DESCRIPTION VARCHAR(100) NOT NULL,
	PRIMARY KEY (COMPANY_ID, TABLE_ID)
);

CREATE TABLE LANGUAGE (
	LANGUAGE_ID VARCHAR(4) NOT NULL,
	NAME VARCHAR(40) NOT NULL,
	PRIMARY KEY (LANGUAGE_ID)
);

CREATE TABLE SEQUENTIAL_ID (
	SEQUENTIAL_ID VARCHAR(40) NOT NULL,
	PRIMARY KEY (SEQUENTIAL_ID)
);

CREATE TABLE SEQUENTIAL (
	COMPANY_ID VARCHAR(4) NOT NULL,
	SEQUENTIAL_ID VARCHAR(40) NOT NULL,
	SEQUENTIAL_VALUE INTEGER NOT NULL DEFAULT '0',
	VERSION INTEGER NOT NULL DEFAULT '0',
	PRIMARY KEY (COMPANY_ID, SEQUENTIAL_ID)
);

CREATE TABLE CITY_ID (
	COUNTRY_ID VARCHAR(2) NOT NULL,
	PROVINCE_ID VARCHAR(2) NOT NULL,
	CITY_ID VARCHAR(3) NOT NULL,
	PRIMARY KEY (COUNTRY_ID, PROVINCE_ID, CITY_ID)
);

CREATE TABLE CITY (
	COMPANY_ID VARCHAR(4) NOT NULL,
	LANGUAGE_ID VARCHAR(2) NOT NULL,
	COUNTRY_ID VARCHAR(2) NOT NULL,
	PROVINCE_ID VARCHAR(2) NOT NULL,
	CITY_ID VARCHAR(3) NOT NULL,
	NAME VARCHAR(40) NOT NULL,
	PRIMARY KEY (COMPANY_ID, LANGUAGE_ID, COUNTRY_ID, PROVINCE_ID, CITY_ID)
);

CREATE TABLE COUNTRY_ID (
	COUNTRY_ID VARCHAR(2) NOT NULL,
	PRIMARY KEY (COUNTRY_ID)
);

CREATE TABLE COUNTRY (
	COMPANY_ID VARCHAR(4) NOT NULL,
	LANGUAGE_ID VARCHAR(2) NOT NULL,
	COUNTRY_ID VARCHAR(2) NOT NULL,
	NAME VARCHAR(40) NOT NULL,
	AREA_CODE VARCHAR(4),
	PRIMARY KEY (COMPANY_ID, LANGUAGE_ID, COUNTRY_ID)
);

CREATE TABLE DATAFILE_ID (
	DATAFILE_ID INTEGER NOT NULL,
	PRIMARY KEY (DATAFILE_ID)
);

CREATE TABLE DATAFILE (
	COMPANY_ID VARCHAR(4) NOT NULL,
	EXPIRED DATETIME NOT NULL,
	DATAFILE_ID INTEGER NOT NULL,
	CREATED DATETIME NOT NULL,
	DATAFILE_TYPE_ID VARCHAR(4) NOT NULL,
	BINARY_PATH VARCHAR(200) NOT NULL,
	BINARY_BYTES INTEGER,
	BINARY_OBJECT BLOB,
	CHARACTER_DATA TEXT,
	VERSION INTEGER NOT NULL DEFAULT '0',
	PRIMARY KEY (COMPANY_ID, EXPIRED, DATAFILE_ID)
);

CREATE TABLE DATAFILE_TYPE (
	DATAFILE_TYPE_ID VARCHAR(4) NOT NULL,
	NAME VARCHAR(40) NOT NULL,
	PRIMARY KEY (DATAFILE_TYPE_ID)
);

CREATE TABLE DISTRICT_ID (
	COUNTRY_ID VARCHAR(2) NOT NULL,
	PROVINCE_ID VARCHAR(2) NOT NULL,
	CITY_ID VARCHAR(3) NOT NULL,
	DISTRICT_ID VARCHAR(4) NOT NULL,
	PRIMARY KEY (COUNTRY_ID, PROVINCE_ID, CITY_ID, DISTRICT_ID)
);

CREATE TABLE DISTRICT (
	COMPANY_ID VARCHAR(4) NOT NULL,
	LANGUAGE_ID VARCHAR(2) NOT NULL,
	COUNTRY_ID VARCHAR(2) NOT NULL,
	PROVINCE_ID VARCHAR(2) NOT NULL,
	CITY_ID VARCHAR(3) NOT NULL,
	DISTRICT_ID VARCHAR(4) NOT NULL,
	NAME VARCHAR(40) NOT NULL,
	PRIMARY KEY (COMPANY_ID, LANGUAGE_ID, COUNTRY_ID, PROVINCE_ID, CITY_ID, DISTRICT_ID)
);

CREATE TABLE PARAMETER_ID (
	PARAMETER_ID VARCHAR(40) NOT NULL,
	PRIMARY KEY (PARAMETER_ID)
);

CREATE TABLE PARAMETER (
	COMPANY_ID VARCHAR(4) NOT NULL,
	EXPIRED DATETIME NOT NULL,
	PARAMETER_ID VARCHAR(40) NOT NULL,
	CREATED DATETIME NOT NULL,
	SUBSYSTEM_ID VARCHAR(2) NOT NULL,
	DATA_TYPE_ID VARCHAR(30) NOT NULL,
	PARAMETER_VALUE VARCHAR(100) NOT NULL,
	DESCRIPTION VARCHAR(100) NOT NULL,
	PRIMARY KEY (COMPANY_ID, EXPIRED, PARAMETER_ID)
);

CREATE TABLE PROVINCE_ID (
	COUNTRY_ID VARCHAR(2) NOT NULL,
	PROVINCE_ID VARCHAR(2) NOT NULL,
	PRIMARY KEY (COUNTRY_ID, PROVINCE_ID)
);

CREATE TABLE PROVINCE (
	COMPANY_ID VARCHAR(4) NOT NULL,
	LANGUAGE_ID VARCHAR(2) NOT NULL,
	COUNTRY_ID VARCHAR(2) NOT NULL,
	PROVINCE_ID VARCHAR(2) NOT NULL,
	NAME VARCHAR(40) NOT NULL,
	PRIMARY KEY (COMPANY_ID, LANGUAGE_ID, COUNTRY_ID, PROVINCE_ID)
);

CREATE TABLE RESPONSE_ID (
	RESPONSE_ID VARCHAR(8) NOT NULL,
	PRIMARY KEY (RESPONSE_ID)
);

CREATE TABLE RESPONSE (
	COMPANY_ID VARCHAR(4) NOT NULL,
	LANGUAGE_ID VARCHAR(2) NOT NULL,
	RESPONSE_ID VARCHAR(8) NOT NULL,
	DESCRIPTION VARCHAR(100) NOT NULL,
	PRIMARY KEY (COMPANY_ID, LANGUAGE_ID, RESPONSE_ID)
);

CREATE TABLE ADDRESS_TYPE_ID (
	ADDRESS_TYPE_ID VARCHAR(4) NOT NULL,
	PRIMARY KEY (ADDRESS_TYPE_ID)
);

CREATE TABLE ADDRESS_TYPE (
	COMPANY_ID VARCHAR(4) NOT NULL,
	LANGUAGE_ID VARCHAR(2) NOT NULL,
	ADDRESS_TYPE_ID VARCHAR(4) NOT NULL,
	NAME VARCHAR(40) NOT NULL,
	PRIMARY KEY (COMPANY_ID, LANGUAGE_ID, ADDRESS_TYPE_ID)
);

CREATE TABLE CIVIL_STATUS_ID (
	CIVIL_STATUS_ID VARCHAR(4) NOT NULL,
	PRIMARY KEY (CIVIL_STATUS_ID)
);

CREATE TABLE CIVIL_STATUS (
	COMPANY_ID VARCHAR(4) NOT NULL,
	LANGUAGE_ID VARCHAR(2) NOT NULL,
	CIVIL_STATUS_ID VARCHAR(4) NOT NULL,
	NAME VARCHAR(40) NOT NULL,
	PRIMARY KEY (COMPANY_ID, LANGUAGE_ID, CIVIL_STATUS_ID)
);

CREATE TABLE GENDER_TYPE_ID (
	GENDER_TYPE_ID VARCHAR(4) NOT NULL,
	PRIMARY KEY (GENDER_TYPE_ID)
);

CREATE TABLE GENDER_TYPE (
	LANGUAGE_ID VARCHAR(2) NOT NULL,
	GENDER_TYPE_ID VARCHAR(4) NOT NULL,
	NAME VARCHAR(40) NOT NULL,
	PRIMARY KEY (LANGUAGE_ID, GENDER_TYPE_ID)
);

CREATE TABLE IDENTIFICATION_TYPE_ID (
	IDENTIFICATION_TYPE_ID VARCHAR(4) NOT NULL,
	PRIMARY KEY (IDENTIFICATION_TYPE_ID)
);

CREATE TABLE IDENTIFICATION_TYPE (
	COMPANY_ID VARCHAR(4) NOT NULL,
	LANGUAGE_ID VARCHAR(2) NOT NULL,
	IDENTIFICATION_TYPE_ID VARCHAR(4) NOT NULL,
	NAME VARCHAR(40) NOT NULL,
	PRIMARY KEY (COMPANY_ID, LANGUAGE_ID, IDENTIFICATION_TYPE_ID)
);

CREATE TABLE PERSON_ID (
	PERSON_ID INTEGER NOT NULL,
	DISTRICT_ID VARCHAR(4) NOT NULL,
	PRIMARY KEY (PERSON_ID, DISTRICT_ID)
);

CREATE TABLE PERSON (
	COMPANY_ID VARCHAR(4) NOT NULL,
	EXPIRED DATETIME NOT NULL,
	PERSON_ID INTEGER NOT NULL,
	DISTRICT_ID VARCHAR(4) NOT NULL,
	CREATED DATETIME NOT NULL,
	NAME VARCHAR(40) NOT NULL,
	LAST_NAME VARCHAR(40) NOT NULL,
	SECOND_LAST_NAME VARCHAR(40),
	IDENTIFICATION_TYPE_ID VARCHAR(4) NOT NULL,
	IDENTIFICATION_NUMBER VARCHAR(40) NOT NULL,
	DATE_OF_BIRTH DATETIME NOT NULL,
	GENDER_TYPE_ID VARCHAR(4) NOT NULL,
	CIVIL_STATUS_ID VARCHAR(4) NOT NULL,
	COUNTRY_ID VARCHAR(2) NOT NULL,
	CITY_ID VARCHAR(3),
	PROVINCE_ID VARCHAR(2),
	PROFESSION_TYPE_ID VARCHAR(4),
	VERSION INTEGER NOT NULL DEFAULT '0',
	PRIMARY KEY (COMPANY_ID, EXPIRED, PERSON_ID, DISTRICT_ID)
);

CREATE TABLE PERSON_ADDRESS (
	COMPANY_ID VARCHAR(4) NOT NULL,
	EXPIRED DATETIME NOT NULL,
	PERSON_ID INTEGER NOT NULL,
	ADDRESS_SEQUENCE TINYINT NOT NULL,
	DISTRICT_ID VARCHAR(4) NOT NULL,
	CREATED DATETIME NOT NULL,
	ADDRESS_TYPE_ID VARCHAR(4) NOT NULL,
	ADDRESS_DESCRIPTION VARCHAR(40) NOT NULL,
	COUNTRY_ID VARCHAR(2),
	CITY_ID VARCHAR(3),
	PROVINCE_ID VARCHAR(2),
	VERSION INTEGER NOT NULL DEFAULT '0',
	PRIMARY KEY (COMPANY_ID, EXPIRED, PERSON_ID, ADDRESS_SEQUENCE, DISTRICT_ID)
);

CREATE TABLE PERSON_PHONE (
	COMPANY_ID VARCHAR(4) NOT NULL,
	EXPIRED DATETIME NOT NULL,
	PERSON_ID INTEGER NOT NULL,
	PHONE_SEQUENCE TINYINT NOT NULL,
	CREATED DATETIME NOT NULL,
	PHONE_TYPE_ID VARCHAR(4) NOT NULL,
	AREA_CODE VARCHAR(4) NOT NULL,
	PHONE_NUMBER VARCHAR(40) NOT NULL,
	VERSION INTEGER NOT NULL DEFAULT '0',
	PRIMARY KEY (COMPANY_ID, EXPIRED, PERSON_ID, PHONE_SEQUENCE)
);

CREATE TABLE PERSON_TYPE_ID (
	PERSON_TYPE_ID VARCHAR(4) NOT NULL,
	PRIMARY KEY (PERSON_TYPE_ID)
);

CREATE TABLE PERSON_TYPE (
	COMPANY_ID VARCHAR(4) NOT NULL,
	LANGUAGE_ID VARCHAR(2) NOT NULL,
	PERSON_TYPE_ID VARCHAR(4) NOT NULL,
	NAME VARCHAR(40) NOT NULL,
	PRIMARY KEY (COMPANY_ID, LANGUAGE_ID, PERSON_TYPE_ID)
);

CREATE TABLE PHONE_TYPE_ID (
	PHONE_TYPE_ID VARCHAR(4) NOT NULL,
	PRIMARY KEY (PHONE_TYPE_ID)
);

CREATE TABLE PHONE_TYPE (
	COMPANY_ID VARCHAR(4) NOT NULL,
	LANGUAGE_ID VARCHAR(2) NOT NULL,
	PHONE_TYPE_ID VARCHAR(4) NOT NULL,
	NAME VARCHAR(40) NOT NULL,
	PRIMARY KEY (COMPANY_ID, LANGUAGE_ID, PHONE_TYPE_ID)
);

CREATE TABLE PROFESSION_TYPE_ID (
	PROFESSION_TYPE_ID VARCHAR(4) NOT NULL,
	PRIMARY KEY (PROFESSION_TYPE_ID)
);

CREATE TABLE PROFESSION_TYPE (
	COMPANY_ID VARCHAR(4) NOT NULL,
	LANGUAGE_ID VARCHAR(2) NOT NULL,
	PROFESSION_TYPE_ID VARCHAR(4) NOT NULL,
	NAME VARCHAR(40) NOT NULL,
	PRIMARY KEY (COMPANY_ID, LANGUAGE_ID, PROFESSION_TYPE_ID)
);

CREATE TABLE COMPONENT_ID (
	COMPONENT_ID VARCHAR(150) NOT NULL,
	PRIMARY KEY (COMPONENT_ID)
);

CREATE TABLE COMPONENT (
	COMPANY_ID VARCHAR(4) NOT NULL,
	COMPONENT_ID VARCHAR(150) NOT NULL,
	SUBSYSTEM_ID VARCHAR(2) NOT NULL,
	CLASS_NAME VARCHAR(100) NOT NULL,
	METHOD_NAME VARCHAR(100) NOT NULL,
	DESCRIPTION VARCHAR(100) NOT NULL,
	PRIMARY KEY (COMPANY_ID, COMPONENT_ID)
);

CREATE TABLE HOST_ID (
	HOST_ID VARCHAR(40) NOT NULL,
	PRIMARY KEY (HOST_ID)
);

CREATE TABLE HOST (
	COMPANY_ID VARCHAR(4) NOT NULL,
	EXPIRED DATETIME NOT NULL,
	HOST_ID VARCHAR(40) NOT NULL,
	CREATED DATETIME NOT NULL,
	ADDRESS VARCHAR(60) NOT NULL,
	TIME_ZONE VARCHAR(4),
	PRIMARY KEY (COMPANY_ID, EXPIRED, HOST_ID)
);

CREATE TABLE MODULE_ID (
	SUBSYSTEM_ID VARCHAR(2) NOT NULL,
	MODULE_ID VARCHAR(2) NOT NULL,
	PRIMARY KEY (SUBSYSTEM_ID, MODULE_ID)
);

CREATE TABLE MODULE (
	COMPANY_ID VARCHAR(4) NOT NULL,
	LANGUAGE_ID VARCHAR(2) NOT NULL,
	SUBSYSTEM_ID VARCHAR(2) NOT NULL,
	MODULE_ID VARCHAR(2) NOT NULL,
	NAME VARCHAR(40) NOT NULL,
	PRIMARY KEY (COMPANY_ID, LANGUAGE_ID, SUBSYSTEM_ID, MODULE_ID)
);

CREATE TABLE PROCESS_ID (
	SUBSYSTEM_ID VARCHAR(2) NOT NULL,
	MODULE_ID VARCHAR(2) NOT NULL,
	PROCESS_ID VARCHAR(2) NOT NULL,
	PRIMARY KEY (SUBSYSTEM_ID, MODULE_ID, PROCESS_ID)
);

CREATE TABLE PROCESS (
	COMPANY_ID VARCHAR(4) NOT NULL,
	LANGUAGE_ID VARCHAR(2) NOT NULL,
	EXPIRED DATETIME NOT NULL,
	SUBSYSTEM_ID VARCHAR(2) NOT NULL,
	MODULE_ID VARCHAR(2) NOT NULL,
	PROCESS_ID VARCHAR(2) NOT NULL,
	CREATED DATETIME NOT NULL,
	NAME VARCHAR(40) NOT NULL,
	ENABLE VARCHAR(1) NOT NULL DEFAULT '1',
	MENU VARCHAR(1) NOT NULL DEFAULT '1',
	URL VARCHAR(100) NOT NULL,
	DATAFILE_ID INTEGER,
	PRIMARY KEY (COMPANY_ID, LANGUAGE_ID, EXPIRED, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID)
);

CREATE TABLE PROCESS_COMPONENT (
	COMPANY_ID VARCHAR(4) NOT NULL,
	SUBSYSTEM_ID VARCHAR(2) NOT NULL,
	MODULE_ID VARCHAR(2) NOT NULL,
	PROCESS_ID VARCHAR(2) NOT NULL,
	PROCESS_SEQUENCE TINYINT NOT NULL,
	COMPONENT_ID VARCHAR(150) NOT NULL,
	ENABLE VARCHAR(1) NOT NULL DEFAULT '0',
	AUTHORIZE VARCHAR(1) NOT NULL DEFAULT '0',
	PRIMARY KEY (COMPANY_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, PROCESS_SEQUENCE)
);

CREATE TABLE PROFILE_ID (
	PROFILE_ID VARCHAR(4) NOT NULL,
	PRIMARY KEY (PROFILE_ID)
);

CREATE TABLE PROFILE (
	COMPANY_ID VARCHAR(4) NOT NULL,
	LANGUAGE_ID VARCHAR(2) NOT NULL,
	PROFILE_ID VARCHAR(4) NOT NULL,
	NAME VARCHAR(40) NOT NULL,
	DESCRIPTION VARCHAR(150),
	PRIMARY KEY (COMPANY_ID, LANGUAGE_ID, PROFILE_ID)
);

CREATE TABLE ROLE (
	COMPANY_ID VARCHAR(4) NOT NULL,
	EXPIRED DATETIME NOT NULL,
	PROFILE_ID VARCHAR(4) NOT NULL,
	SUBSYSTEM_ID VARCHAR(2) NOT NULL,
	MODULE_ID VARCHAR(2) NOT NULL,
	PROCESS_ID VARCHAR(2) NOT NULL,
	DAY_ID VARCHAR(3) NOT NULL,
	CREATED DATETIME NOT NULL,
	HOUR_FROM VARCHAR(4),
	HOUR_TO VARCHAR(4),
	EDITABLE VARCHAR(1) NOT NULL DEFAULT '0',
	PRIMARY KEY (COMPANY_ID, EXPIRED, PROFILE_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID, DAY_ID)
);

CREATE TABLE SUBSYSTEM_ID (
	SUBSYSTEM_ID VARCHAR(2) NOT NULL,
	PRIMARY KEY (SUBSYSTEM_ID)
);

CREATE TABLE SUBSYSTEM (
	COMPANY_ID VARCHAR(4) NOT NULL,
	LANGUAGE_ID VARCHAR(2) NOT NULL,
	SUBSYSTEM_ID VARCHAR(2) NOT NULL,
	NAME VARCHAR(40) NOT NULL,
	PRIMARY KEY (COMPANY_ID, LANGUAGE_ID, SUBSYSTEM_ID)
);

CREATE TABLE USER_ACCESS (
	COMPANY_ID VARCHAR(4) NOT NULL,
	EXPIRED DATETIME NOT NULL,
	USER_ID VARCHAR(20) NOT NULL,
	CREATED DATETIME NOT NULL,
	USER_KEY VARCHAR(20) NOT NULL,
	LAST_CHANGE DATETIME NOT NULL,
	QUESTION VARCHAR(100),
	ANSWER VARCHAR(100),
	PRIMARY KEY (COMPANY_ID, EXPIRED, USER_ID)
);

CREATE TABLE USER_ACCOUNT_ID (
	USER_ID VARCHAR(20) NOT NULL,
	PRIMARY KEY (USER_ID)
);

CREATE TABLE USER_ACCOUNT (
	COMPANY_ID VARCHAR(4) NOT NULL,
	EXPIRED DATETIME NOT NULL,
	USER_ID VARCHAR(20) NOT NULL,
	CREATED DATETIME NOT NULL,
	NAME VARCHAR(40) NOT NULL,
	USER_TYPE_ID VARCHAR(4) NOT NULL,
	USER_STATUS_ID VARCHAR(4) NOT NULL,
	LANGUAGE_ID VARCHAR(4) NOT NULL,
	EMAIL VARCHAR(100) NOT NULL,
	PERSON_ID INTEGER,
	VERSION INTEGER NOT NULL DEFAULT '0',
	PRIMARY KEY (COMPANY_ID, EXPIRED, USER_ID)
);

CREATE TABLE USER_AUTHORIZATION (
	COMPANY_ID VARCHAR(4) NOT NULL,
	EXPIRED DATETIME NOT NULL,
	USER_ID VARCHAR(20) NOT NULL,
	AUTHORIZER_ID VARCHAR(20) NOT NULL,
	SUBSYSTEM_ID VARCHAR(2) NOT NULL,
	MODULE_ID VARCHAR(2) NOT NULL,
	PROCESS_ID VARCHAR(2) NOT NULL,
	CREATED DATETIME NOT NULL,
	PRIMARY KEY (COMPANY_ID, EXPIRED, USER_ID, AUTHORIZER_ID, SUBSYSTEM_ID, MODULE_ID, PROCESS_ID)
);

CREATE TABLE USER_NOTIFICATION (
	COMPANY_ID VARCHAR(4) NOT NULL,
	EXPIRED DATETIME NOT NULL,
	USER_ID VARCHAR(20) NOT NULL,
	CREATED DATETIME NOT NULL,
	USER_NOTIFICATION_TYPE_ID VARCHAR(4) NOT NULL,
	SUBJECT VARCHAR(100) NOT NULL,
	MESSAGE VARCHAR(4000) NOT NULL,
	READ_ VARCHAR(1) NOT NULL DEFAULT '0',
	PRIMARY KEY (COMPANY_ID, EXPIRED, USER_ID)
);

CREATE TABLE USER_NOTIFICATION_TYPE_ID (
	USER_NOTIFICATION_TYPE_ID VARCHAR(4) NOT NULL,
	PRIMARY KEY (USER_NOTIFICATION_TYPE_ID)
);

CREATE TABLE USER_NOTIFICATION_TYPE (
	LANGUAGE_ID VARCHAR(2) NOT NULL,
	USER_NOTIFICATION_TYPE_ID VARCHAR(4) NOT NULL,
	NAME VARCHAR(40) NOT NULL,
	PRIMARY KEY (LANGUAGE_ID, USER_NOTIFICATION_TYPE_ID)
);

CREATE TABLE USER_PROFILE (
	COMPANY_ID VARCHAR(4) NOT NULL,
	EXPIRED DATETIME NOT NULL,
	USER_ID VARCHAR(20) NOT NULL,
	PROFILE_ID VARCHAR(4) NOT NULL,
	CREATED DATETIME NOT NULL,
	PRIMARY KEY (COMPANY_ID, EXPIRED, USER_ID, PROFILE_ID)
);

CREATE TABLE USER_SESSION (
	COMPANY_ID VARCHAR(4) NOT NULL,
	EXPIRED DATETIME NOT NULL,
	USER_ID VARCHAR(20) NOT NULL,
	HOST_ID VARCHAR(40) NOT NULL,
	CREATED DATETIME NOT NULL,
	TOKEN VARCHAR(100) NOT NULL,
	VERSION INTEGER NOT NULL DEFAULT '0',
	PRIMARY KEY (COMPANY_ID, EXPIRED, USER_ID, HOST_ID)
);

CREATE TABLE USER_STATUS_ID (
	USER_STATUS_ID VARCHAR(4) NOT NULL,
	PRIMARY KEY (USER_STATUS_ID)
);

CREATE TABLE USER_STATUS (
	COMPANY_ID VARCHAR(4) NOT NULL,
	LANGUAGE_ID VARCHAR(2) NOT NULL,
	USER_STATUS_ID VARCHAR(4) NOT NULL,
	NAME VARCHAR(40) NOT NULL,
	PRIMARY KEY (COMPANY_ID, LANGUAGE_ID, USER_STATUS_ID)
);

CREATE TABLE USER_TYPE_ID (
	USER_TYPE_ID VARCHAR(4) NOT NULL,
	PRIMARY KEY (USER_TYPE_ID)
);

CREATE TABLE USER_TYPE (
	COMPANY_ID VARCHAR(4) NOT NULL,
	LANGUAGE_ID VARCHAR(2) NOT NULL,
	USER_TYPE_ID VARCHAR(4) NOT NULL,
	NAME VARCHAR(40) NOT NULL,
	PRIMARY KEY (COMPANY_ID, LANGUAGE_ID, USER_TYPE_ID)
);

ALTER TABLE ADDRESS_TYPE ADD CONSTRAINT ADDRESS_TYPE_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE ADDRESS_TYPE ADD CONSTRAINT ADDRESS_TYPE_ID_FK FOREIGN KEY (ADDRESS_TYPE_ID) REFERENCES ADDRESS_TYPE_ID (ADDRESS_TYPE_ID);
ALTER TABLE ADDRESS_TYPE ADD CONSTRAINT ADDRESS_TYPE_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE CITY ADD CONSTRAINT CITY_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE CITY ADD CONSTRAINT CITY_ID_FK FOREIGN KEY (COUNTRY_ID, PROVINCE_ID, CITY_ID) REFERENCES CITY_ID (COUNTRY_ID, PROVINCE_ID, CITY_ID);
ALTER TABLE CITY ADD CONSTRAINT CITY_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE CITY_ID ADD CONSTRAINT CITY_ID_PROVINCE_ID_FK FOREIGN KEY (COUNTRY_ID, PROVINCE_ID) REFERENCES PROVINCE_ID (COUNTRY_ID, PROVINCE_ID);
ALTER TABLE CIVIL_STATUS ADD CONSTRAINT CIVIL_STATUS_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE CIVIL_STATUS ADD CONSTRAINT CIVIL_STATUS_ID_FK FOREIGN KEY (CIVIL_STATUS_ID) REFERENCES CIVIL_STATUS_ID (CIVIL_STATUS_ID);
ALTER TABLE CIVIL_STATUS ADD CONSTRAINT CIVIL_STATUS_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE COMPONENT ADD CONSTRAINT COMPONENT_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE COMPONENT ADD CONSTRAINT COMPONENT_ID_FK FOREIGN KEY (COMPONENT_ID) REFERENCES COMPONENT_ID (COMPONENT_ID);
ALTER TABLE COMPONENT ADD CONSTRAINT COMPONENT_SUBSYSTEM_ID_FK FOREIGN KEY (SUBSYSTEM_ID) REFERENCES SUBSYSTEM_ID (SUBSYSTEM_ID);
ALTER TABLE COUNTRY ADD CONSTRAINT COUNTRY_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE COUNTRY ADD CONSTRAINT COUNTRY_ID_FK FOREIGN KEY (COUNTRY_ID) REFERENCES COUNTRY_ID (COUNTRY_ID);
ALTER TABLE COUNTRY ADD CONSTRAINT COUNTRY_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE CURRENCY ADD CONSTRAINT CURRENCY_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE CURRENCY ADD CONSTRAINT CURRENCY_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE DATABASE_TYPE ADD CONSTRAINT DATABASE_TYPE_DATA_TYPE_FK FOREIGN KEY (DATA_TYPE_ID) REFERENCES DATA_TYPE (DATA_TYPE_ID);
ALTER TABLE DATAFILE ADD CONSTRAINT DATAFILE_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE DATAFILE ADD CONSTRAINT DATAFILE_DATAFILE_TYPE_FK FOREIGN KEY (DATAFILE_TYPE_ID) REFERENCES DATAFILE_TYPE (DATAFILE_TYPE_ID);
ALTER TABLE DATAFILE ADD CONSTRAINT DATAFILE_ID_FK FOREIGN KEY (DATAFILE_ID) REFERENCES DATAFILE_ID (DATAFILE_ID);
ALTER TABLE DISTRICT ADD CONSTRAINT DISTRICT_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE DISTRICT ADD CONSTRAINT DISTRICT_ID_FK FOREIGN KEY (COUNTRY_ID, PROVINCE_ID, CITY_ID, DISTRICT_ID) REFERENCES DISTRICT_ID (COUNTRY_ID, PROVINCE_ID, CITY_ID, DISTRICT_ID);
ALTER TABLE DISTRICT ADD CONSTRAINT DISTRICT_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE DISTRICT_ID ADD CONSTRAINT DISTRICT_ID_CITY_ID_FK FOREIGN KEY (COUNTRY_ID, PROVINCE_ID, CITY_ID) REFERENCES CITY_ID (COUNTRY_ID, PROVINCE_ID, CITY_ID);
ALTER TABLE ENTITY_FIELD ADD CONSTRAINT ENTITY_FIELD_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE ENTITY_FIELD ADD CONSTRAINT ENTITY_FIELD_DATA_TYPE_FK FOREIGN KEY (DATA_TYPE_ID) REFERENCES DATA_TYPE (DATA_TYPE_ID);
ALTER TABLE ENTITY_FIELD ADD CONSTRAINT ENTITY_FIELD_ID_FK FOREIGN KEY (TABLE_ID, FIELD_ID) REFERENCES ENTITY_FIELD_ID (TABLE_ID, FIELD_ID);
ALTER TABLE ENTITY_FIELD ADD CONSTRAINT ENTITY_FIELD_SEQUENTIAL_ID_FK FOREIGN KEY (SEQUENTIAL_ID) REFERENCES SEQUENTIAL_ID (SEQUENTIAL_ID);
ALTER TABLE ENTITY_FIELD_ID ADD CONSTRAINT ENTITY_FIELD_ID_TABLE_ID_FK FOREIGN KEY (TABLE_ID) REFERENCES ENTITY_TABLE_ID (TABLE_ID);
ALTER TABLE ENTITY_RELATIONSHIP ADD CONSTRAINT ENTITY_RELATIONSHIP_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE ENTITY_RELATIONSHIP ADD CONSTRAINT ENTITY_RELATIONSHIP_FROM_FK FOREIGN KEY (TABLE_FROM, FIELD_FROM) REFERENCES ENTITY_FIELD_ID (TABLE_ID, FIELD_ID);
ALTER TABLE ENTITY_RELATIONSHIP ADD CONSTRAINT ENTITY_RELATIONSHIP_TO_FK FOREIGN KEY (TABLE_TO, FIELD_TO) REFERENCES ENTITY_FIELD_ID (TABLE_ID, FIELD_ID);
ALTER TABLE ENTITY_TABLE ADD CONSTRAINT ENTITY_TABLE_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE ENTITY_TABLE ADD CONSTRAINT ENTITY_TABLE_ID_FK FOREIGN KEY (TABLE_ID) REFERENCES ENTITY_TABLE_ID (TABLE_ID);
ALTER TABLE FREQUENCY ADD CONSTRAINT FREQUENCY_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE FREQUENCY ADD CONSTRAINT FREQUENCY_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE FUNDS_DESTINATION ADD CONSTRAINT FUNDS_DESTINATION_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE FUNDS_DESTINATION ADD CONSTRAINT FUNDS_DESTINATION_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE GENDER_TYPE ADD CONSTRAINT GENDER_TYPE_ID_FK FOREIGN KEY (GENDER_TYPE_ID) REFERENCES GENDER_TYPE_ID (GENDER_TYPE_ID);
ALTER TABLE GENDER_TYPE ADD CONSTRAINT GENDER_TYPE_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE GEOGRAPHIC_ZONE ADD CONSTRAINT GEOGRAPHIC_ZONE_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE GEOGRAPHIC_ZONE ADD CONSTRAINT GEOGRAPHIC_ZONE_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE HOST ADD CONSTRAINT HOST_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE HOST ADD CONSTRAINT HOST_ID_FK FOREIGN KEY (HOST_ID) REFERENCES HOST_ID (HOST_ID);
ALTER TABLE IDENTIFICATION_TYPE ADD CONSTRAINT IDENTIFICATION_TYPE_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE IDENTIFICATION_TYPE ADD CONSTRAINT IDENTIFICATION_TYPE_ID_FK FOREIGN KEY (IDENTIFICATION_TYPE_ID) REFERENCES IDENTIFICATION_TYPE_ID (IDENTIFICATION_TYPE_ID);
ALTER TABLE IDENTIFICATION_TYPE ADD CONSTRAINT IDENT_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE MODULE ADD CONSTRAINT MODULE_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE MODULE ADD CONSTRAINT MODULE_ID_FK FOREIGN KEY (SUBSYSTEM_ID, MODULE_ID) REFERENCES MODULE_ID (SUBSYSTEM_ID, MODULE_ID);
ALTER TABLE MODULE ADD CONSTRAINT MODULE_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE MODULE_ID ADD CONSTRAINT MODULE_ID_SUBSYSTEM_ID_FK FOREIGN KEY (SUBSYSTEM_ID) REFERENCES SUBSYSTEM_ID (SUBSYSTEM_ID);
ALTER TABLE PARAMETER ADD CONSTRAINT PARAMETER_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE PARAMETER ADD CONSTRAINT PARAMETER_DATA_TYPE_FK FOREIGN KEY (DATA_TYPE_ID) REFERENCES DATA_TYPE (DATA_TYPE_ID);
ALTER TABLE PARAMETER ADD CONSTRAINT PARAMETER_ID_FK FOREIGN KEY (PARAMETER_ID) REFERENCES PARAMETER_ID (PARAMETER_ID);
ALTER TABLE PARTNER ADD CONSTRAINT PARTNER_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE PARTNER ADD CONSTRAINT PARTNER_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE PARTNER ADD CONSTRAINT PARTNER_PERSON_ID_FK FOREIGN KEY (PERSON_ID) REFERENCES PERSON_ID (PERSON_ID);
ALTER TABLE PARTNER ADD CONSTRAINT PARTNER_USER_ID_FK FOREIGN KEY (USER_ID) REFERENCES USER_ACCOUNT_ID (USER_ID);
ALTER TABLE PARTNER_GROUP ADD CONSTRAINT PARTNER_GROUP_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE PARTNER_GROUP ADD CONSTRAINT PARTNER_GROUP_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE PARTNER_GROUP ADD CONSTRAINT PARTNER_GROUP_USER_ID_FK FOREIGN KEY (USER_ID) REFERENCES USER_ACCOUNT_ID (USER_ID);
ALTER TABLE PARTNER_GROUP_MEMBER ADD CONSTRAINT PARTNER_GRP_MEM_PERSON_ID_FK FOREIGN KEY (PERSON_ID) REFERENCES PERSON_ID (PERSON_ID);
ALTER TABLE PARTNER_GROUP_MEMBER ADD CONSTRAINT PARTN_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE PERSON ADD CONSTRAINT PERSON_CITY_ID_FK FOREIGN KEY (COUNTRY_ID, PROVINCE_ID, CITY_ID) REFERENCES CITY_ID (COUNTRY_ID, PROVINCE_ID, CITY_ID);
ALTER TABLE PERSON ADD CONSTRAINT PERSON_CIVIL_STATUS_ID_FK FOREIGN KEY (CIVIL_STATUS_ID) REFERENCES CIVIL_STATUS_ID (CIVIL_STATUS_ID);
ALTER TABLE PERSON ADD CONSTRAINT PERSON_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE PERSON ADD CONSTRAINT PERSON_GENDER_TYPE_ID_FK FOREIGN KEY (GENDER_TYPE_ID) REFERENCES GENDER_TYPE_ID (GENDER_TYPE_ID);
ALTER TABLE PERSON ADD CONSTRAINT PERSON_IDENTIF_TYPE_ID_FK FOREIGN KEY (IDENTIFICATION_TYPE_ID) REFERENCES IDENTIFICATION_TYPE_ID (IDENTIFICATION_TYPE_ID);
ALTER TABLE PERSON ADD CONSTRAINT PERSON_ID_FK FOREIGN KEY (PERSON_ID, DISTRICT_ID) REFERENCES PERSON_ID (PERSON_ID, DISTRICT_ID);
ALTER TABLE PERSON ADD CONSTRAINT PERSON_PROFESSION_TYPE_ID_FK FOREIGN KEY (PROFESSION_TYPE_ID) REFERENCES PROFESSION_TYPE_ID (PROFESSION_TYPE_ID);
ALTER TABLE PERSON_ADDRESS ADD CONSTRAINT PERSON_ADDRESS_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE PERSON_ADDRESS ADD CONSTRAINT PERSON_ADDRESS_DISTRICT_ID_FK FOREIGN KEY (COUNTRY_ID, PROVINCE_ID, CITY_ID, DISTRICT_ID) REFERENCES DISTRICT_ID (COUNTRY_ID, PROVINCE_ID, CITY_ID, DISTRICT_ID);
ALTER TABLE PERSON_PHONE ADD CONSTRAINT PERSON_PHONE_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE PERSON_TYPE ADD CONSTRAINT PERSON_TYPE_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE PERSON_TYPE ADD CONSTRAINT PERSON_TYPE_ID_FK FOREIGN KEY (PERSON_TYPE_ID) REFERENCES PERSON_TYPE_ID (PERSON_TYPE_ID);
ALTER TABLE PERSON_TYPE ADD CONSTRAINT PERSON_TYPE_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE PHONE_TYPE ADD CONSTRAINT PHONE_TYPE_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE PHONE_TYPE ADD CONSTRAINT PHONE_TYPE_ID_FK FOREIGN KEY (PHONE_TYPE_ID) REFERENCES PHONE_TYPE_ID (PHONE_TYPE_ID);
ALTER TABLE PHONE_TYPE ADD CONSTRAINT PHONE_TYPE_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE PROCESS ADD CONSTRAINT PROCESS_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE PROCESS ADD CONSTRAINT PROCESS_DATAFILE_ID_FK FOREIGN KEY (DATAFILE_ID) REFERENCES DATAFILE_ID (DATAFILE_ID);
ALTER TABLE PROCESS ADD CONSTRAINT PROCESS_ID_FK FOREIGN KEY (SUBSYSTEM_ID, MODULE_ID, PROCESS_ID) REFERENCES PROCESS_ID (SUBSYSTEM_ID, MODULE_ID, PROCESS_ID);
ALTER TABLE PROCESS ADD CONSTRAINT PROCESS_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE PROCESS_COMPONENT ADD CONSTRAINT PROCESS_COMPONENT_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE PROCESS_COMPONENT ADD CONSTRAINT PROCESS_COMP_COMPONENT_ID_FK FOREIGN KEY (COMPONENT_ID) REFERENCES COMPONENT_ID (COMPONENT_ID);
ALTER TABLE PROCESS_COMPONENT ADD CONSTRAINT PROCESS_COMP_PROCESS_ID_FK FOREIGN KEY (SUBSYSTEM_ID, MODULE_ID, PROCESS_ID) REFERENCES PROCESS_ID (SUBSYSTEM_ID, MODULE_ID, PROCESS_ID);
ALTER TABLE PROCESS_ID ADD CONSTRAINT PROCESS_ID_MODULE_ID_FK FOREIGN KEY (SUBSYSTEM_ID, MODULE_ID) REFERENCES MODULE_ID (SUBSYSTEM_ID, MODULE_ID);
ALTER TABLE PRODUCT_ASESSOR ADD CONSTRAINT PRODUCT_ASESSOR_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE PRODUCT_ASESSOR ADD CONSTRAINT PRODUCT_ASESSOR_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE PRODUCT_ASESSOR ADD CONSTRAINT PROD_ASSESSOR_USER_ID_FK FOREIGN KEY (USER_ID) REFERENCES USER_ACCOUNT_ID (USER_ID);
ALTER TABLE PRODUCT_MICROCREDIT ADD CONSTRAINT PRODUCT_MICROCREDIT_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE PRODUCT_MICROCREDIT ADD CONSTRAINT PRODU_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE PROFESSION_TYPE ADD CONSTRAINT PROFESSION_TYPE_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE PROFESSION_TYPE ADD CONSTRAINT PROFESSION_TYPE_ID_FK FOREIGN KEY (PROFESSION_TYPE_ID) REFERENCES PROFESSION_TYPE_ID (PROFESSION_TYPE_ID);
ALTER TABLE PROFESSION_TYPE ADD CONSTRAINT PROFESSION_TYPE_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE PROFILE ADD CONSTRAINT PROFILE_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE PROFILE ADD CONSTRAINT PROFILE_ID_FK FOREIGN KEY (PROFILE_ID) REFERENCES PROFILE_ID (PROFILE_ID);
ALTER TABLE PROFILE ADD CONSTRAINT PROFILE_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE PROVINCE ADD CONSTRAINT PROVINCE_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE PROVINCE ADD CONSTRAINT PROVINCE_ID_FK FOREIGN KEY (COUNTRY_ID, PROVINCE_ID) REFERENCES PROVINCE_ID (COUNTRY_ID, PROVINCE_ID);
ALTER TABLE PROVINCE ADD CONSTRAINT PROVINCE_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE PROVINCE_ID ADD CONSTRAINT PROVINCE_ID_COUNTRY_ID_FK FOREIGN KEY (COUNTRY_ID) REFERENCES COUNTRY_ID (COUNTRY_ID);
ALTER TABLE QUOTA_TYPE ADD CONSTRAINT QUOTA_TYPE_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE QUOTA_TYPE ADD CONSTRAINT QUOTA_TYPE_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE RECOMMENDATION ADD CONSTRAINT RECOMMENDATION_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE RECOMMENDATION ADD CONSTRAINT RECOMMENDATION_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE RESPONSABILITY ADD CONSTRAINT RESPONSABILITY_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE RESPONSABILITY ADD CONSTRAINT RESPONSABILITY_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE RESPONSE ADD CONSTRAINT RESPONSE_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE RESPONSE ADD CONSTRAINT RESPONSE_ID_FK FOREIGN KEY (RESPONSE_ID) REFERENCES RESPONSE_ID (RESPONSE_ID);
ALTER TABLE RESPONSE ADD CONSTRAINT RESPONSE_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE ROLE ADD CONSTRAINT ROLE_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE ROLE ADD CONSTRAINT ROLE_PROCESS_ID_FK FOREIGN KEY (SUBSYSTEM_ID, MODULE_ID, PROCESS_ID) REFERENCES PROCESS_ID (SUBSYSTEM_ID, MODULE_ID, PROCESS_ID);
ALTER TABLE SEQUENTIAL ADD CONSTRAINT SEQUENTIAL_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE SEQUENTIAL ADD CONSTRAINT SEQUENTIAL_ID_FK FOREIGN KEY (SEQUENTIAL_ID) REFERENCES SEQUENTIAL_ID (SEQUENTIAL_ID);
ALTER TABLE SOLICITUDE ADD CONSTRAINT SOLICITUDE_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE SOLICITUDE ADD CONSTRAINT SOLICITUDE_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE SOLICITUDE ADD CONSTRAINT SOLICITUDE_USER_ACCOUNT_ID_FK FOREIGN KEY (ASSESSOR) REFERENCES USER_ACCOUNT_ID (USER_ID);
ALTER TABLE SOLICITUDE_STATUS ADD CONSTRAINT SOLICITUDE_STATUS_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE SOLICITUDE_STATUS ADD CONSTRAINT SOLICITUDE_STATUS_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE SUBSYSTEM ADD CONSTRAINT SUBSYSTEM_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE SUBSYSTEM ADD CONSTRAINT SUBSYSTEM_ID_FK FOREIGN KEY (SUBSYSTEM_ID) REFERENCES SUBSYSTEM_ID (SUBSYSTEM_ID);
ALTER TABLE SUBSYSTEM ADD CONSTRAINT SUBSYSTEM_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE USER_ACCESS ADD CONSTRAINT USER_ACCESS_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE USER_ACCESS ADD CONSTRAINT USER_ACCESS_USER_ACCOUNT_ID_FK FOREIGN KEY (USER_ID) REFERENCES USER_ACCOUNT_ID (USER_ID);
ALTER TABLE USER_ACCOUNT ADD CONSTRAINT USER_ACCOUNT_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE USER_ACCOUNT ADD CONSTRAINT USER_ACCOUNT_ID_FK FOREIGN KEY (USER_ID) REFERENCES USER_ACCOUNT_ID (USER_ID);
ALTER TABLE USER_ACCOUNT ADD CONSTRAINT USER_ACCOUNT_PERSON_ID_FK FOREIGN KEY (PERSON_ID) REFERENCES PERSON_ID (PERSON_ID);
ALTER TABLE USER_ACCOUNT ADD CONSTRAINT USER_ACCOUNT_USER_STATUS_ID_FK FOREIGN KEY (USER_STATUS_ID) REFERENCES USER_STATUS_ID (USER_STATUS_ID);
ALTER TABLE USER_ACCOUNT ADD CONSTRAINT USER_ACCOUNT_USER_TYPE_ID_FK FOREIGN KEY (USER_TYPE_ID) REFERENCES USER_TYPE_ID (USER_TYPE_ID);
ALTER TABLE USER_AUTHORIZATION ADD CONSTRAINT USER_AUTHORIZATION_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE USER_AUTHORIZATION ADD CONSTRAINT USER_AUTH_PROCESS_ID_FK FOREIGN KEY (SUBSYSTEM_ID, MODULE_ID, PROCESS_ID) REFERENCES PROCESS_ID (SUBSYSTEM_ID, MODULE_ID, PROCESS_ID);
ALTER TABLE USER_AUTHORIZATION ADD CONSTRAINT USER_AUTH_USER_ACCOUNT_ID_FK FOREIGN KEY (USER_ID) REFERENCES USER_ACCOUNT_ID (USER_ID);
ALTER TABLE USER_AUTHORIZATION ADD CONSTRAINT USER_AUTH_USER_AUTH_ID_FK FOREIGN KEY (AUTHORIZER_ID) REFERENCES USER_ACCOUNT_ID (USER_ID);
ALTER TABLE USER_NOTIFICATION ADD CONSTRAINT USER_NOTIFICATION_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE USER_NOTIFICATION ADD CONSTRAINT USER_NOTIF_USER_ACCOUNT_ID_FK FOREIGN KEY (USER_ID) REFERENCES USER_ACCOUNT_ID (USER_ID);
ALTER TABLE USER_NOTIFICATION ADD CONSTRAINT USER_NOTIF_USER_NOT_TYPE_ID_FK FOREIGN KEY (USER_NOTIFICATION_TYPE_ID) REFERENCES USER_NOTIFICATION_TYPE_ID (USER_NOTIFICATION_TYPE_ID);
ALTER TABLE USER_NOTIFICATION_TYPE ADD CONSTRAINT USER_NOTIFICATION_TYPE_ID_FK FOREIGN KEY (USER_NOTIFICATION_TYPE_ID) REFERENCES USER_NOTIFICATION_TYPE_ID (USER_NOTIFICATION_TYPE_ID);
ALTER TABLE USER_NOTIFICATION_TYPE ADD CONSTRAINT USER__LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE USER_PROFILE ADD CONSTRAINT USER_PROFILE_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE USER_PROFILE ADD CONSTRAINT USER_PROF_USER_ACCOUNT_ID_FK FOREIGN KEY (USER_ID) REFERENCES USER_ACCOUNT_ID (USER_ID);
ALTER TABLE USER_SESSION ADD CONSTRAINT USER_SESSION_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE USER_SESSION ADD CONSTRAINT USER_SESSION_HOST_ID_FK FOREIGN KEY (HOST_ID) REFERENCES HOST_ID (HOST_ID);
ALTER TABLE USER_SESSION ADD CONSTRAINT USER_SESS_USER_ACCOUNT_ID_FK FOREIGN KEY (USER_ID) REFERENCES USER_ACCOUNT_ID (USER_ID);
ALTER TABLE USER_STATUS ADD CONSTRAINT USER_STATUS_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE USER_STATUS ADD CONSTRAINT USER_STATUS_ID_FK FOREIGN KEY (USER_STATUS_ID) REFERENCES USER_STATUS_ID (USER_STATUS_ID);
ALTER TABLE USER_STATUS ADD CONSTRAINT USER_STATUS_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE USER_TYPE ADD CONSTRAINT USER_TYPE_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE USER_TYPE ADD CONSTRAINT USER_TYPE_ID_FK FOREIGN KEY (USER_TYPE_ID) REFERENCES USER_TYPE_ID (USER_TYPE_ID);
ALTER TABLE USER_TYPE ADD CONSTRAINT USER_TYPE_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE ZONE_ASESSOR ADD CONSTRAINT ZONE_ASESSOR_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE ZONE_ASESSOR ADD CONSTRAINT ZONE_ASESSOR_LANGUAGE_FK FOREIGN KEY (LANGUAGE_ID) REFERENCES LANGUAGE (LANGUAGE_ID);
ALTER TABLE ZONE_ASESSOR ADD CONSTRAINT ZONE_ASE_USER_ID_FK FOREIGN KEY (USER_ID) REFERENCES USER_ACCOUNT_ID (USER_ID);
