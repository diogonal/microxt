DELETE FROM ENTITY_RELATIONSHIP WHERE RELATIONSHIP_ID = 'SEQUENTIAL_COMPANY_FK';
DELETE FROM ENTITY_RELATIONSHIP WHERE RELATIONSHIP_ID = 'ENTITY_TABLE_COMPANY_FK';
DELETE FROM ENTITY_RELATIONSHIP WHERE RELATIONSHIP_ID = 'ENTITY_FIELD_COMPANY_FK';
DELETE FROM ENTITY_RELATIONSHIP WHERE RELATIONSHIP_ID = 'ENTITY_RELATIONSHIP_COMPANY_FK';
DELETE FROM ENTITY_RELATIONSHIP WHERE RELATIONSHIP_ID = 'DATABASE_TYPE_DATA_TYPE_FK';
DELETE FROM ENTITY_RELATIONSHIP WHERE RELATIONSHIP_ID = 'ENTITY_TABLE_ID_FK';
DELETE FROM ENTITY_RELATIONSHIP WHERE RELATIONSHIP_ID = 'ENTITY_FIELD_ID_TABLE_ID_FK';
DELETE FROM ENTITY_RELATIONSHIP WHERE RELATIONSHIP_ID = 'ENTITY_FIELD_ID_FK';
DELETE FROM ENTITY_RELATIONSHIP WHERE RELATIONSHIP_ID = 'ENTITY_FIELD_ID_FK';
DELETE FROM ENTITY_RELATIONSHIP WHERE RELATIONSHIP_ID = 'ENTITY_FIELD_DATA_TYPE_FK';
DELETE FROM ENTITY_RELATIONSHIP WHERE RELATIONSHIP_ID = 'ENTITY_FIELD_SEQUENTIAL_ID_FK';
DELETE FROM ENTITY_RELATIONSHIP WHERE RELATIONSHIP_ID = 'ENTITY_RELATIONSHIP_ID_FK';
DELETE FROM ENTITY_RELATIONSHIP WHERE RELATIONSHIP_ID = 'ENTITY_RELATIONSHIP_FROM_FK';
DELETE FROM ENTITY_RELATIONSHIP WHERE RELATIONSHIP_ID = 'ENTITY_RELATIONSHIP_FROM_FK';
DELETE FROM ENTITY_RELATIONSHIP WHERE RELATIONSHIP_ID = 'ENTITY_RELATIONSHIP_TO_FK';
DELETE FROM ENTITY_RELATIONSHIP WHERE RELATIONSHIP_ID = 'ENTITY_RELATIONSHIP_TO_FK';

DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'LANGUAGE' AND FIELD_ID = 'LANGUAGE_ID';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'LANGUAGE' AND FIELD_ID = 'NAME';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'COMPANY' AND FIELD_ID = 'COMPANY_ID';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'COMPANY' AND FIELD_ID = 'NAME';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'COMPANY' AND FIELD_ID = 'DATAFILE_ID';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'COMPANY' AND FIELD_ID = 'UPGRADE_NUMBER';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'COMPANY' AND FIELD_ID = 'LICENSE_DATE';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'COMPANY' AND FIELD_ID = 'ENABLE';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'SEQUENTIAL' AND FIELD_ID = 'SEQUENTIAL_ID';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'SEQUENTIAL' AND FIELD_ID = 'SEQUENTIAL_VALUE';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'DATA_TYPE' AND FIELD_ID = 'DATA_TYPE_ID';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'DATA_TYPE' AND FIELD_ID = 'DESCRIPTION';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'DATABASE_TYPE' AND FIELD_ID = 'DATA_TYPE_ID';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'DATABASE_TYPE' AND FIELD_ID = 'DATABASE_ID';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'DATABASE_TYPE' AND FIELD_ID = 'DATA_SIZE';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'DATABASE_TYPE' AND FIELD_ID = 'DATABASE_TYPE';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_TABLE' AND FIELD_ID = 'TABLE_ID';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_TABLE' AND FIELD_ID = 'PACKAGE_NAME';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_TABLE' AND FIELD_ID = 'MULTI_COMPANY';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_TABLE' AND FIELD_ID = 'MULTI_LANGUAGE';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_TABLE' AND FIELD_ID = 'HISTORICAL_DATA';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_TABLE' AND FIELD_ID = 'OPTIMISTIC_LOCKING';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_TABLE' AND FIELD_ID = 'ENUMERATED_TYPE';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_TABLE' AND FIELD_ID = 'CACHE_MEMORY';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_TABLE' AND FIELD_ID = 'DESCRIPTION';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'TABLE_ID';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'FIELD_ID';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'FIELD_ORDER';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'DATA_TYPE_ID';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'DATA_SIZE';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'DATA_SCALE';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'PRIMARY_KEY';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'UNIQUE_KEY';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'NULLABLE';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'DEFAULT_VALUE';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'SEQUENTIAL_ID';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'MINIMUM_VALUE';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'MAXIMUM_VALUE';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'SECURITY_LEVEL';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'READONLY';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'HIDDEN';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'DESCRIPTION';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'LABEL';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'TOOLTIP';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'MASK';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'VALIDATION';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'CALCULATION';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_RELATIONSHIP' AND FIELD_ID = 'RELATIONSHIP_ID';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_RELATIONSHIP' AND FIELD_ID = 'RELATIONSHIP_ORDER';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_RELATIONSHIP' AND FIELD_ID = 'TABLE_FROM';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_RELATIONSHIP' AND FIELD_ID = 'FIELD_FROM';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_RELATIONSHIP' AND FIELD_ID = 'TABLE_TO';
DELETE FROM ENTITY_FIELD  WHERE TABLE_ID = 'ENTITY_RELATIONSHIP' AND FIELD_ID = 'FIELD_TO';

DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'LANGUAGE' AND FIELD_ID = 'LANGUAGE_ID';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'LANGUAGE' AND FIELD_ID = 'NAME';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'COMPANY' AND FIELD_ID = 'COMPANY_ID';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'COMPANY' AND FIELD_ID = 'NAME';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'COMPANY' AND FIELD_ID = 'DATAFILE_ID';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'COMPANY' AND FIELD_ID = 'UPGRADE_NUMBER';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'COMPANY' AND FIELD_ID = 'LICENSE_DATE';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'COMPANY' AND FIELD_ID = 'ENABLE';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'SEQUENTIAL_ID' AND FIELD_ID = 'SEQUENTIAL_ID';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'SEQUENTIAL' AND FIELD_ID = 'COMPANY_ID';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'SEQUENTIAL' AND FIELD_ID = 'SEQUENTIAL_ID';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'SEQUENTIAL' AND FIELD_ID = 'SEQUENTIAL_VALUE';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'DATA_TYPE' AND FIELD_ID = 'DATA_TYPE_ID';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'DATA_TYPE' AND FIELD_ID = 'DESCRIPTION';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'DATABASE_TYPE' AND FIELD_ID = 'DATA_TYPE_ID';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'DATABASE_TYPE' AND FIELD_ID = 'DATABASE_ID';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'DATABASE_TYPE' AND FIELD_ID = 'DATA_SIZE';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'DATABASE_TYPE' AND FIELD_ID = 'DATABASE_TYPE';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_TABLE_ID' AND FIELD_ID = 'TABLE_ID';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_TABLE' AND FIELD_ID = 'COMPANY_ID';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_TABLE' AND FIELD_ID = 'TABLE_ID';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_TABLE' AND FIELD_ID = 'PACKAGE_NAME';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_TABLE' AND FIELD_ID = 'MULTI_COMPANY';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_TABLE' AND FIELD_ID = 'MULTI_LANGUAGE';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_TABLE' AND FIELD_ID = 'HISTORICAL_DATA';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_TABLE' AND FIELD_ID = 'OPTIMISTIC_LOCKING';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_TABLE' AND FIELD_ID = 'ENUMERATED_TYPE';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_TABLE' AND FIELD_ID = 'CACHE_MEMORY';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_TABLE' AND FIELD_ID = 'DESCRIPTION';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_FIELD_ID' AND FIELD_ID = 'TABLE_ID';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_FIELD_ID' AND FIELD_ID = 'FIELD_ID';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'COMPANY_ID';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'TABLE_ID';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'FIELD_ID';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'FIELD_ORDER';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'DATA_TYPE_ID';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'DATA_SIZE';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'DATA_SCALE';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'PRIMARY_KEY';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'UNIQUE_KEY';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'NULLABLE';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'DEFAULT_VALUE';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'SEQUENTIAL_ID';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'MINIMUM_VALUE';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'MAXIMUM_VALUE';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'SECURITY_LEVEL';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'READONLY';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'HIDDEN';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'DESCRIPTION';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'LABEL';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'TOOLTIP';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'MASK';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'VALIDATION';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_FIELD' AND FIELD_ID = 'CALCULATION';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_RELATIONSHIP_ID' AND FIELD_ID = 'RELATIONSHIP_ID';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_RELATIONSHIP' AND FIELD_ID = 'COMPANY_ID';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_RELATIONSHIP' AND FIELD_ID = 'RELATIONSHIP_ID';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_RELATIONSHIP' AND FIELD_ID = 'RELATIONSHIP_ORDER';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_RELATIONSHIP' AND FIELD_ID = 'TABLE_FROM';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_RELATIONSHIP' AND FIELD_ID = 'FIELD_FROM';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_RELATIONSHIP' AND FIELD_ID = 'TABLE_TO';
DELETE FROM ENTITY_FIELD_ID WHERE TABLE_ID = 'ENTITY_RELATIONSHIP' AND FIELD_ID = 'FIELD_TO';

DELETE FROM ENTITY_TABLE WHERE TABLE_ID = 'LANGUAGE';
DELETE FROM ENTITY_TABLE WHERE TABLE_ID = 'COMPANY';
DELETE FROM ENTITY_TABLE WHERE TABLE_ID = 'SEQUENTIAL';
DELETE FROM ENTITY_TABLE WHERE TABLE_ID = 'DATA_TYPE';
DELETE FROM ENTITY_TABLE WHERE TABLE_ID = 'DATABASE_TYPE';
DELETE FROM ENTITY_TABLE WHERE TABLE_ID = 'ENTITY_TABLE';
DELETE FROM ENTITY_TABLE WHERE TABLE_ID = 'ENTITY_FIELD';
DELETE FROM ENTITY_TABLE WHERE TABLE_ID = 'ENTITY_RELATIONSHIP';

DELETE FROM ENTITY_TABLE_ID WHERE TABLE_ID = 'LANGUAGE';
DELETE FROM ENTITY_TABLE_ID WHERE TABLE_ID = 'COMPANY';
DELETE FROM ENTITY_TABLE_ID WHERE TABLE_ID = 'SEQUENTIAL';
DELETE FROM ENTITY_TABLE_ID WHERE TABLE_ID = 'DATA_TYPE';
DELETE FROM ENTITY_TABLE_ID WHERE TABLE_ID = 'DATABASE_TYPE';
DELETE FROM ENTITY_TABLE_ID WHERE TABLE_ID = 'ENTITY_TABLE';
DELETE FROM ENTITY_TABLE_ID WHERE TABLE_ID = 'ENTITY_FIELD';
DELETE FROM ENTITY_TABLE_ID WHERE TABLE_ID = 'ENTITY_RELATIONSHIP';
DELETE FROM ENTITY_TABLE_ID WHERE TABLE_ID = 'SEQUENTIAL_ID';
DELETE FROM ENTITY_TABLE_ID WHERE TABLE_ID = 'ENTITY_TABLE_ID';
DELETE FROM ENTITY_TABLE_ID WHERE TABLE_ID = 'ENTITY_FIELD_ID';
DELETE FROM ENTITY_TABLE_ID WHERE TABLE_ID = 'ENTITY_RELATIONSHIP_ID';

INSERT INTO ENTITY_TABLE_ID VALUES ('SEQUENTIAL_ID');
INSERT INTO ENTITY_TABLE_ID VALUES ('ENTITY_TABLE_ID');
INSERT INTO ENTITY_TABLE_ID VALUES ('ENTITY_FIELD_ID');
INSERT INTO ENTITY_TABLE_ID VALUES ('ENTITY_RELATIONSHIP_ID');

INSERT INTO ENTITY_TABLE_ID VALUES ('LANGUAGE');
INSERT INTO ENTITY_TABLE_ID VALUES ('COMPANY');
INSERT INTO ENTITY_TABLE_ID VALUES ('SEQUENTIAL');
INSERT INTO ENTITY_TABLE_ID VALUES ('DATA_TYPE');
INSERT INTO ENTITY_TABLE_ID VALUES ('DATABASE_TYPE');
INSERT INTO ENTITY_TABLE_ID VALUES ('ENTITY_TABLE');
INSERT INTO ENTITY_TABLE_ID VALUES ('ENTITY_FIELD');
INSERT INTO ENTITY_TABLE_ID VALUES ('ENTITY_RELATIONSHIP');

INSERT INTO ENTITY_TABLE VALUES ('ALL','LANGUAGE','common','0','0','0','0','0','1','0','Values of languages');
INSERT INTO ENTITY_TABLE VALUES ('ALL','COMPANY','common','0','0','0','0','0','0','0','Values of companies');
INSERT INTO ENTITY_TABLE VALUES ('ALL','SEQUENTIAL','common','1','1','0','0','1','1','0','Values of sequences');
INSERT INTO ENTITY_TABLE VALUES ('ALL','DATA_TYPE','common','0','0','0','0','0','1','0','Values of data types');
INSERT INTO ENTITY_TABLE VALUES ('ALL','DATABASE_TYPE','common','0','0','0','0','0','0','0','Values of database types');
INSERT INTO ENTITY_TABLE VALUES ('ALL','ENTITY_TABLE','common','1','1','0','0','0','0','0','Values of entity tables');
INSERT INTO ENTITY_TABLE VALUES ('ALL','ENTITY_FIELD','common','1','1','0','0','0','0','0','Values of entity fields');
INSERT INTO ENTITY_TABLE VALUES ('ALL','ENTITY_RELATIONSHIP','common','0','1','0','0','0','0','0','Values of entity relationships');

INSERT INTO ENTITY_FIELD_ID VALUES ('LANGUAGE','LANGUAGE_ID');
INSERT INTO ENTITY_FIELD_ID VALUES ('LANGUAGE','NAME');
INSERT INTO ENTITY_FIELD_ID VALUES ('COMPANY','COMPANY_ID');
INSERT INTO ENTITY_FIELD_ID VALUES ('COMPANY','NAME');
INSERT INTO ENTITY_FIELD_ID VALUES ('COMPANY','DATAFILE_ID');
INSERT INTO ENTITY_FIELD_ID VALUES ('COMPANY','UPGRADE_NUMBER');
INSERT INTO ENTITY_FIELD_ID VALUES ('COMPANY','LICENSE_DATE');
INSERT INTO ENTITY_FIELD_ID VALUES ('COMPANY','ENABLE');
INSERT INTO ENTITY_FIELD_ID VALUES ('SEQUENTIAL_ID','SEQUENTIAL_ID');
INSERT INTO ENTITY_FIELD_ID VALUES ('SEQUENTIAL','COMPANY_ID');
INSERT INTO ENTITY_FIELD_ID VALUES ('SEQUENTIAL','SEQUENTIAL_ID');
INSERT INTO ENTITY_FIELD_ID VALUES ('SEQUENTIAL','SEQUENTIAL_VALUE');
INSERT INTO ENTITY_FIELD_ID VALUES ('DATA_TYPE','DATA_TYPE_ID');
INSERT INTO ENTITY_FIELD_ID VALUES ('DATA_TYPE','DESCRIPTION');
INSERT INTO ENTITY_FIELD_ID VALUES ('DATABASE_TYPE','DATA_TYPE_ID');
INSERT INTO ENTITY_FIELD_ID VALUES ('DATABASE_TYPE','DATABASE_ID');
INSERT INTO ENTITY_FIELD_ID VALUES ('DATABASE_TYPE','DATA_SIZE');
INSERT INTO ENTITY_FIELD_ID VALUES ('DATABASE_TYPE','DATABASE_TYPE');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_TABLE_ID','TABLE_ID');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_TABLE','COMPANY_ID');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_TABLE','TABLE_ID');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_TABLE','PACKAGE_NAME');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_TABLE','MULTI_COMPANY');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_TABLE','MULTI_LANGUAGE');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_TABLE','HISTORICAL_DATA');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_TABLE','OPTIMISTIC_LOCKING');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_TABLE','ENUMERATED_TYPE');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_TABLE','CACHE_MEMORY');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_TABLE','DESCRIPTION');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_FIELD_ID','TABLE_ID');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_FIELD_ID','FIELD_ID');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_FIELD','COMPANY_ID');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_FIELD','TABLE_ID');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_FIELD','FIELD_ID');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_FIELD','FIELD_ORDER');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_FIELD','DATA_TYPE_ID');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_FIELD','DATA_SIZE');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_FIELD','DATA_SCALE');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_FIELD','PRIMARY_KEY');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_FIELD','UNIQUE_KEY');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_FIELD','NULLABLE');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_FIELD','DEFAULT_VALUE');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_FIELD','SEQUENTIAL_ID');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_FIELD','MINIMUM_VALUE');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_FIELD','MAXIMUM_VALUE');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_FIELD','SECURITY_LEVEL');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_FIELD','READONLY');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_FIELD','HIDDEN');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_FIELD','DESCRIPTION');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_FIELD','LABEL');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_FIELD','TOOLTIP');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_FIELD','MASK');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_FIELD','VALIDATION');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_FIELD','CALCULATION');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_RELATIONSHIP_ID','RELATIONSHIP_ID');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_RELATIONSHIP','COMPANY_ID');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_RELATIONSHIP','RELATIONSHIP_ID');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_RELATIONSHIP','RELATIONSHIP_ORDER');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_RELATIONSHIP','TABLE_FROM');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_RELATIONSHIP','FIELD_FROM');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_RELATIONSHIP','TABLE_TO');
INSERT INTO ENTITY_FIELD_ID VALUES ('ENTITY_RELATIONSHIP','FIELD_TO');

INSERT INTO ENTITY_FIELD VALUES ('ALL','LANGUAGE','LANGUAGE_ID',1,'String',4,0,'1','0','0',null,null,null,null,0,'0','0','Language Id','languageId',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','LANGUAGE','NAME',2,'String',40,0,'0','0','0',null,null,null,null,0,'0','0','Name of language','name',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','COMPANY','COMPANY_ID',1,'String',4,0,'1','0','0',null,null,null,null,0,'0','0','Company Id','companyId',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','COMPANY','NAME',2,'String',40,0,'0','0','0',null,null,null,null,0,'0','0','Name of company','name',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','COMPANY','DATAFILE_ID',3,'Long',10,0,'0','0','1',null,null,null,null,0,'0','0','Document Id','documentId',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','COMPANY','UPGRADE_NUMBER',4,'BigDecimal',4,2,'0','0','1',null,null,null,null,0,'0','0','Upgrade number of company','upgradeNumber',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','COMPANY','LICENSE_DATE',5,'Date',0,0,'0','0','1',null,null,null,null,0,'0','0','License date of company','licenseDate',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','COMPANY','ENABLE',6,'Boolean',1,0,'0','0','0','0',null,null,null,0,'0','0','Enable','enable',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','SEQUENTIAL','SEQUENTIAL_ID',1,'String',40,0,'1','0','0',null,null,null,null,0,'0','0','Sequential Id','sequentialId',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','SEQUENTIAL','SEQUENTIAL_VALUE',2,'Long',10,0,'0','0','0','0',null,null,null,0,'0','0','Value of sequential','sequentialValue',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','DATA_TYPE','DATA_TYPE_ID',1,'String',30,0,'1','0','0',null,null,null,null,0,'0','0','Data type Id','dataTypeId',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','DATA_TYPE','DESCRIPTION',2,'String',100,0,'0','0','0',null,null,null,null,0,'0','0','Name of data type','name',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','DATABASE_TYPE','DATA_TYPE_ID',1,'String',30,0,'1','0','0',null,null,null,null,0,'0','0','Data type Id','dataTypeId',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','DATABASE_TYPE','DATABASE_ID',2,'String',30,0,'1','0','0',null,null,null,null,0,'0','0','Database Id','databaseId',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','DATABASE_TYPE','DATA_SIZE',3,'Integer',5,0,'1','0','0',null,null,null,null,0,'0','0','Data size of field','dataSize',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','DATABASE_TYPE','DATABASE_TYPE',4,'String',30,0,'0','0','0',null,null,null,null,0,'0','0','Data type of database','databaseType',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_TABLE','TABLE_ID',1,'String',30,0,'1','0','0',null,null,null,null,0,'0','0','Table Id','tableId',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_TABLE','PACKAGE_NAME',2,'String',30,0,'0','0','0',null,null,null,null,0,'0','0','Package name of entity','packageName',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_TABLE','MULTI_COMPANY',3,'Boolean',1,0,'0','0','0','0',null,null,null,0,'0','0','Multi company of entity','multiCompany',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_TABLE','MULTI_LANGUAGE',4,'Boolean',1,0,'0','0','0','0',null,null,null,0,'0','0','Multi language of entity','multiLanguage',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_TABLE','HISTORICAL_DATA',5,'Boolean',1,0,'0','0','0','0',null,null,null,0,'0','0','Historical data of entity','historicalData',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_TABLE','OPTIMISTIC_LOCKING',6,'Boolean',1,0,'0','0','0','0',null,null,null,0,'0','0','Optimistic locking of entity','optimisticLocking',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_TABLE','ENUMERATED_TYPE',7,'Boolean',1,0,'0','0','0','0',null,null,null,0,'0','0','Enumerated type of entity','enumeratedType',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_TABLE','CACHE_MEMORY',8,'Boolean',1,0,'0','0','0','0',null,null,null,0,'0','0','Cache memory of entity','cacheMemory',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_TABLE','DESCRIPTION',9,'String',100,0,'0','0','0',null,null,null,null,0,'0','0','Description of entity','description',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_FIELD','TABLE_ID',1,'String',30,0,'1','1','0',null,null,null,null,0,'0','0','Table Id','tableId',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_FIELD','FIELD_ID',2,'String',30,0,'1','1','0',null,null,null,null,0,'0','0','Field Id','fieldId',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_FIELD','FIELD_ORDER',3,'Integer',3,0,'0','1','0',null,null,null,null,0,'0','0','Field order','fieldOrder',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_FIELD','DATA_TYPE_ID',4,'String',30,0,'0','0','0',null,null,null,null,0,'0','0','Data type of field','dataType',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_FIELD','DATA_SIZE',5,'Integer',5,0,'0','0','0',null,null,null,null,0,'0','0','Data size of field','dataSize',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_FIELD','DATA_SCALE',6,'Integer',3,0,'0','0','0','0',null,null,null,0,'0','0','Data scale of field','dataScale',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_FIELD','PRIMARY_KEY',7,'Boolean',1,0,'0','0','0','0',null,null,null,0,'0','0','Primary key','primaryKey',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_FIELD','UNIQUE_KEY',8,'Boolean',1,0,'0','0','0','0',null,null,null,0,'0','0','Unique key','uniqueKey',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_FIELD','NULLABLE',9,'Boolean',1,0,'0','0','0','0',null,null,null,0,'0','0','Nullable','nullable',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_FIELD','DEFAULT_VALUE',10,'String',30,0,'0','0','1',null,null,null,null,0,'0','0','Default value of field','defaultValue',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_FIELD','SEQUENTIAL_ID',11,'String',30,0,'0','0','1',null,null,null,null,0,'0','0','Sequential Id of field','sequentialId',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_FIELD','MINIMUM_VALUE',12,'String',30,0,'0','0','1',null,null,null,null,0,'0','0','Minimum value of field','minimumValue',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_FIELD','MAXIMUM_VALUE',13,'String',30,0,'0','0','1',null,null,null,null,0,'0','0','Maximum value of field','maximumValue',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_FIELD','SECURITY_LEVEL',14,'Integer',3,0,'0','0','0','0',null,null,null,0,'0','0','Security level of field','securityLevel',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_FIELD','READONLY',15,'Boolean',1,0,'0','0','0','0',null,null,null,0,'0','0','Read only of field','readOnly',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_FIELD','HIDDEN',16,'Boolean',1,0,'0','0','0','0',null,null,null,0,'0','0','Hidden of field','hidden',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_FIELD','DESCRIPTION',17,'String',100,0,'0','0','1',null,null,null,null,0,'0','0','Description of field','description',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_FIELD','LABEL',18,'String',100,0,'0','0','1',null,null,null,null,0,'0','0','Label of field','label',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_FIELD','TOOLTIP',19,'String',100,0,'0','0','1',null,null,null,null,0,'0','0','Tooltip of field','tooltip',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_FIELD','MASK',20,'String',100,0,'0','0','1',null,null,null,null,0,'0','0','Mask of field','mask',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_FIELD','VALIDATION',21,'String',100,0,'0','0','1',null,null,null,null,0,'0','0','Validation of field','validation',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_FIELD','CALCULATION',22,'String',100,0,'0','0','1',null,null,null,null,0,'0','0','Calculation of field','calculation',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_RELATIONSHIP','RELATIONSHIP_ID',1,'String',30,0,'1','0','0',null,null,null,null,0,'0','0','Relationship order','relationshipOrder',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_RELATIONSHIP','RELATIONSHIP_ORDER',2,'Integer',3,0,'1','0','0',null,null,null,null,0,'0','0','Field order','fieldOrder',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_RELATIONSHIP','TABLE_FROM',3,'String',30,0,'0','0','0',null,null,null,null,0,'0','0','Table from','tableFrom',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_RELATIONSHIP','FIELD_FROM',4,'String',30,0,'0','0','0',null,null,null,null,0,'0','0','Field from','fieldFrom',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_RELATIONSHIP','TABLE_TO',5,'String',30,0,'0','0','0',null,null,null,null,0,'0','0','Table to','tableTo',null,null,null,null);
INSERT INTO ENTITY_FIELD VALUES ('ALL','ENTITY_RELATIONSHIP','FIELD_TO',6,'String',30,0,'0','0','0',null,null,null,null,0,'0','0','Filed to','fieldTo',null,null,null,null);

INSERT INTO ENTITY_RELATIONSHIP VALUES ('ALL','SEQUENTIAL_COMPANY_FK',1,'SEQUENTIAL','COMPANY_ID','COMPANY','COMPANY_ID');
INSERT INTO ENTITY_RELATIONSHIP VALUES ('ALL','ENTITY_TABLE_COMPANY_FK',1,'ENTITY_TABLE','COMPANY_ID','COMPANY','COMPANY_ID');
INSERT INTO ENTITY_RELATIONSHIP VALUES ('ALL','ENTITY_FIELD_COMPANY_FK',1,'ENTITY_FIELD','COMPANY_ID','COMPANY','COMPANY_ID');
INSERT INTO ENTITY_RELATIONSHIP VALUES ('ALL','ENTITY_RELATIONSHIP_COMPANY_FK',1,'ENTITY_RELATIONSHIP','COMPANY_ID','COMPANY','COMPANY_ID');
INSERT INTO ENTITY_RELATIONSHIP VALUES ('ALL','DATABASE_TYPE_DATA_TYPE_FK',1,'DATABASE_TYPE','DATA_TYPE_ID','DATA_TYPE','DATA_TYPE_ID');
INSERT INTO ENTITY_RELATIONSHIP VALUES ('ALL','ENTITY_TABLE_ID_FK',1,'ENTITY_TABLE','TABLE_ID','ENTITY_TABLE_ID','TABLE_ID');
INSERT INTO ENTITY_RELATIONSHIP VALUES ('ALL','ENTITY_FIELD_ID_TABLE_ID_FK',1,'ENTITY_FIELD_ID','TABLE_ID','ENTITY_TABLE_ID','TABLE_ID');
INSERT INTO ENTITY_RELATIONSHIP VALUES ('ALL','ENTITY_FIELD_ID_FK',1,'ENTITY_FIELD','TABLE_ID','ENTITY_FIELD_ID','TABLE_ID');
INSERT INTO ENTITY_RELATIONSHIP VALUES ('ALL','ENTITY_FIELD_ID_FK',2,'ENTITY_FIELD','FIELD_ID','ENTITY_FIELD_ID','FIELD_ID');
INSERT INTO ENTITY_RELATIONSHIP VALUES ('ALL','ENTITY_FIELD_DATA_TYPE_FK',1,'ENTITY_FIELD','DATA_TYPE_ID','DATA_TYPE','DATA_TYPE_ID');
INSERT INTO ENTITY_RELATIONSHIP VALUES ('ALL','ENTITY_FIELD_SEQUENTIAL_ID_FK',1,'ENTITY_FIELD','SEQUENTIAL_ID','SEQUENTIAL_ID','SEQUENTIAL_ID');
INSERT INTO ENTITY_RELATIONSHIP VALUES ('ALL','ENTITY_RELATIONSHIP_ID_FK',1,'ENTITY_RELATIONSHIP','RELATIONSHIP_ID','ENTITY_RELATIONSHIP_ID','RELATIONSHIP_ID');
INSERT INTO ENTITY_RELATIONSHIP VALUES ('ALL','ENTITY_RELATIONSHIP_FROM_FK',1,'ENTITY_RELATIONSHIP','TABLE_FROM','ENTITY_FIELD_ID','TABLE_ID');
INSERT INTO ENTITY_RELATIONSHIP VALUES ('ALL','ENTITY_RELATIONSHIP_FROM_FK',2,'ENTITY_RELATIONSHIP','FIELD_FROM','ENTITY_FIELD_ID','FIELD_ID');
INSERT INTO ENTITY_RELATIONSHIP VALUES ('ALL','ENTITY_RELATIONSHIP_TO_FK',1,'ENTITY_RELATIONSHIP','TABLE_TO','ENTITY_FIELD_ID','TABLE_ID');
INSERT INTO ENTITY_RELATIONSHIP VALUES ('ALL','ENTITY_RELATIONSHIP_TO_FK',2,'ENTITY_RELATIONSHIP','FIELD_TO','ENTITY_FIELD_ID','FIELD_ID');
