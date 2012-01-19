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


ALTER TABLE DATABASE_TYPE ADD CONSTRAINT DATABASE_TYPE_DATA_TYPE_FK FOREIGN KEY (DATA_TYPE_ID) REFERENCES DATA_TYPE (DATA_TYPE_ID);
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
ALTER TABLE SEQUENTIAL ADD CONSTRAINT SEQUENTIAL_COMPANY_FK FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY (COMPANY_ID);
ALTER TABLE SEQUENTIAL ADD CONSTRAINT SEQUENTIAL_SEQ_ID_FK FOREIGN KEY (SEQUENTIAL_ID) REFERENCES SEQUENTIAL_ID (SEQUENTIAL_ID);
