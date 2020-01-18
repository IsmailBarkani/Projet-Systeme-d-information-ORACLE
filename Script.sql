--------------------------------------------------------
--  File created - samedi-janvier-18-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table AUTEUR
--------------------------------------------------------

  CREATE TABLE "BBBSI"."AUTEUR" 
   (	"NUM_AUT" NUMBER(*,0), 
	"NOM_AUT" VARCHAR2(20), 
	"PRENOM_AUT" VARCHAR2(20)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CATALOGUE
--------------------------------------------------------

  CREATE TABLE "BBBSI"."CATALOGUE" 
   (	"REF_CLASSE" VARCHAR2(20), 
	"CODE_FRS" NUMBER(*,0), 
	"DESI_CLASSE" VARCHAR2(20), 
	"MARQUE" VARCHAR2(20), 
	"PRIX_UNTAIRE" FLOAT(126)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COMMANDE
--------------------------------------------------------

  CREATE TABLE "BBBSI"."COMMANDE" 
   (	"NUM_COMD" NUMBER(*,0), 
	"CODE_FRS" NUMBER(*,0), 
	"DATE_CMD" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DEMANDE
--------------------------------------------------------

  CREATE TABLE "BBBSI"."DEMANDE" 
   (	"REF_DEMD" VARCHAR2(20), 
	"NUM_CMD" NUMBER(*,0), 
	"REF_CLASSE" VARCHAR2(20), 
	"REF_SERV" VARCHAR2(20), 
	"TYPE_DEMD" VARCHAR2(20), 
	"DATE_DEMD" DATE, 
	"ETAT_DEMD" VARCHAR2(20), 
	"REF_MAT" VARCHAR2(40), 
	"DATE_RETOUR" VARCHAR2(40), 
	"DESI_MAT" VARCHAR2(100)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ECRIRE
--------------------------------------------------------

  CREATE TABLE "BBBSI"."ECRIRE" 
   (	"NUM_AUT" NUMBER(*,0), 
	"REF_OUV" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EMPRUNT
--------------------------------------------------------

  CREATE TABLE "BBBSI"."EMPRUNT" 
   (	"ID_EMPRUNT" NUMBER(*,0), 
	"ID_RESP" VARCHAR2(20), 
	"REF_OUV" NUMBER(*,0), 
	"DEB_EMPRUNT" DATE, 
	"FIN_EMPRUNT" DATE, 
	"DATE_RETOUR" DATE, 
	"CIN_EMP" VARCHAR2(40)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EMPRUNTER
--------------------------------------------------------

  CREATE TABLE "BBBSI"."EMPRUNTER" 
   (	"REF_SERV" VARCHAR2(20), 
	"REF_MAT" VARCHAR2(20), 
	"DATE_DEB_EMPRUNT" DATE, 
	"DATE_FIN_EMPRUNT" DATE, 
	"ETAT_MAT" VARCHAR2(2040)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EMPRUNTEUR
--------------------------------------------------------

  CREATE TABLE "BBBSI"."EMPRUNTEUR" 
   (	"CIN_EMP" VARCHAR2(40), 
	"REF_FIL" VARCHAR2(20), 
	"NOM_EMP" VARCHAR2(20), 
	"PRENOM_EMP" VARCHAR2(20), 
	"TEL_EMP" VARCHAR2(20), 
	"GRADE_EMP" VARCHAR2(20), 
	"EMAIL_EMP" VARCHAR2(70)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FILEIRE
--------------------------------------------------------

  CREATE TABLE "BBBSI"."FILEIRE" 
   (	"REF_FIL" VARCHAR2(20), 
	"DESI_FIL" VARCHAR2(40)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FOURNISSEUR
--------------------------------------------------------

  CREATE TABLE "BBBSI"."FOURNISSEUR" 
   (	"CODE_FRS" NUMBER(*,0), 
	"NOM_FRS" VARCHAR2(20), 
	"ADDR_FRS" VARCHAR2(30), 
	"TEL_FRS" VARCHAR2(20)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table IMAGE
--------------------------------------------------------

  CREATE TABLE "BBBSI"."IMAGE" 
   (	"REF_IMAGE" NUMBER(*,0), 
	"PATH" BLOB, 
	"REF_MAT" VARCHAR2(40)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("PATH") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table LIVRAISON
--------------------------------------------------------

  CREATE TABLE "BBBSI"."LIVRAISON" 
   (	"NUM_LIV" NUMBER(*,0), 
	"DATE_LIV" DATE, 
	"CODE_FRS" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MATERIEL
--------------------------------------------------------

  CREATE TABLE "BBBSI"."MATERIEL" 
   (	"REF_MAT" VARCHAR2(20), 
	"NUM_LIV" NUMBER(*,0), 
	"REF_SERV" VARCHAR2(20), 
	"DESI_MAT" VARCHAR2(40), 
	"ETAT_MAT" VARCHAR2(20), 
	"DATE_ACHAT" DATE, 
	"DATE_AFFECTATION" VARCHAR2(20), 
	"TVA" FLOAT(126), 
	"PRIXHT" FLOAT(126), 
	"IMAGE_PATH" VARCHAR2(256), 
	"SITUATION" VARCHAR2(40)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table OCCUPER
--------------------------------------------------------

  CREATE TABLE "BBBSI"."OCCUPER" 
   (	"ID_RESP" VARCHAR2(20), 
	"REF_SERV" VARCHAR2(20), 
	"DATE_OCCUPATION" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table OUVRAGE
--------------------------------------------------------

  CREATE TABLE "BBBSI"."OUVRAGE" 
   (	"REF_OUV" NUMBER(*,0), 
	"NUM_TYPE" NUMBER(*,0), 
	"TITRE" VARCHAR2(250), 
	"ISBN" VARCHAR2(20), 
	"EDITEUR_OUV" VARCHAR2(20), 
	"DATE_EDITION" DATE, 
	"AUTEUR" VARCHAR2(100), 
	"ETAT_RETOUR" VARCHAR2(40), 
	"IMAGE_PATH" VARCHAR2(255)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RECLAMATION
--------------------------------------------------------

  CREATE TABLE "BBBSI"."RECLAMATION" 
   (	"REF_REC" NUMBER, 
	"REF_MAT" VARCHAR2(40), 
	"REF_SERV" VARCHAR2(40), 
	"DETAILLE" VARCHAR2(255), 
	"ETAT_MAT" VARCHAR2(40), 
	"DATE_REC" VARCHAR2(40)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RESPONSABLE
--------------------------------------------------------

  CREATE TABLE "BBBSI"."RESPONSABLE" 
   (	"ID_RESP" VARCHAR2(40), 
	"NOM_RESP" VARCHAR2(20), 
	"PRENOM_RESP" VARCHAR2(20), 
	"EMAIL_RESP" VARCHAR2(40), 
	"TEL_RESP" VARCHAR2(20), 
	"GRADE_RESP" VARCHAR2(20), 
	"IMAGE" VARCHAR2(250), 
	"PASSWORD" VARCHAR2(255)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SANCTION
--------------------------------------------------------

  CREATE TABLE "BBBSI"."SANCTION" 
   (	"NUM_SANC" NUMBER(*,0), 
	"CIN_EMP" VARCHAR2(40), 
	"DATE_DEB" DATE, 
	"DATE_FIN" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SERVICE
--------------------------------------------------------

  CREATE TABLE "BBBSI"."SERVICE" 
   (	"REF_SERV" VARCHAR2(20), 
	"DESI_SERV" VARCHAR2(40), 
	"REF_RESP" VARCHAR2(40)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TYPE
--------------------------------------------------------

  CREATE TABLE "BBBSI"."TYPE" 
   (	"NUM_TYPE" NUMBER(*,0), 
	"TYPE_OU" VARCHAR2(20)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

---------------------------------------------------
--   DATA FOR TABLE AUTEUR
--   FILTER = none used
---------------------------------------------------
REM INSERTING into BBBSI.AUTEUR
Insert into BBBSI.AUTEUR (NUM_AUT,NOM_AUT,PRENOM_AUT) values (1,'Marta Madero','Marta Madero');

---------------------------------------------------
--   END DATA FOR TABLE AUTEUR
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE CATALOGUE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into BBBSI.CATALOGUE
Insert into BBBSI.CATALOGUE (REF_CLASSE,CODE_FRS,DESI_CLASSE,MARQUE,PRIX_UNTAIRE) values ('CL1',1,'HP PROBOOK','HP',3800);
Insert into BBBSI.CATALOGUE (REF_CLASSE,CODE_FRS,DESI_CLASSE,MARQUE,PRIX_UNTAIRE) values ('CL2',1,'ASUS SIMBAL','ASUS',2700);
Insert into BBBSI.CATALOGUE (REF_CLASSE,CODE_FRS,DESI_CLASSE,MARQUE,PRIX_UNTAIRE) values ('CL3',1,'HP PROBOOK 640','HP',400);
Insert into BBBSI.CATALOGUE (REF_CLASSE,CODE_FRS,DESI_CLASSE,MARQUE,PRIX_UNTAIRE) values ('CL4',1,'Bureau 1.5mX2M','Philips',1000);
Insert into BBBSI.CATALOGUE (REF_CLASSE,CODE_FRS,DESI_CLASSE,MARQUE,PRIX_UNTAIRE) values ('CL5',3,'LG netbook','LG',750);
Insert into BBBSI.CATALOGUE (REF_CLASSE,CODE_FRS,DESI_CLASSE,MARQUE,PRIX_UNTAIRE) values ('CL6',2,'chaise grande taille','Roka',120);

---------------------------------------------------
--   END DATA FOR TABLE CATALOGUE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE COMMANDE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into BBBSI.COMMANDE
Insert into BBBSI.COMMANDE (NUM_COMD,CODE_FRS,DATE_CMD) values (1,1,to_timestamp('14/01/20 02:20:12,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into BBBSI.COMMANDE (NUM_COMD,CODE_FRS,DATE_CMD) values (2,1,to_timestamp('14/01/20 02:20:35,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into BBBSI.COMMANDE (NUM_COMD,CODE_FRS,DATE_CMD) values (3,1,to_timestamp('17/01/20 08:45:02,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into BBBSI.COMMANDE (NUM_COMD,CODE_FRS,DATE_CMD) values (4,3,to_timestamp('17/01/20 08:55:50,000000000','DD/MM/RR HH24:MI:SS,FF'));

---------------------------------------------------
--   END DATA FOR TABLE COMMANDE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE DEMANDE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into BBBSI.DEMANDE
Insert into BBBSI.DEMANDE (REF_DEMD,NUM_CMD,REF_CLASSE,REF_SERV,TYPE_DEMD,DATE_DEMD,ETAT_DEMD,REF_MAT,DATE_RETOUR,DESI_MAT) values ('7',3,'CL3','SR5','a',to_timestamp('14/01/20 02:15:41,000000000','DD/MM/RR HH24:MI:SS,FF'),'accepter',null,null,'HP Pro');
Insert into BBBSI.DEMANDE (REF_DEMD,NUM_CMD,REF_CLASSE,REF_SERV,TYPE_DEMD,DATE_DEMD,ETAT_DEMD,REF_MAT,DATE_RETOUR,DESI_MAT) values ('2',null,null,'SR5','e',to_timestamp('09/01/20 19:53:56,000000000','DD/MM/RR HH24:MI:SS,FF'),'accepter','MAT6','15/02/20','HP HORIZON mode');
Insert into BBBSI.DEMANDE (REF_DEMD,NUM_CMD,REF_CLASSE,REF_SERV,TYPE_DEMD,DATE_DEMD,ETAT_DEMD,REF_MAT,DATE_RETOUR,DESI_MAT) values ('4',null,null,'SR4','e',to_timestamp('07/01/20 21:42:30,000000000','DD/MM/RR HH24:MI:SS,FF'),'accepter','MAT4','01/03/20','IMPRIMANT 20X HP');
Insert into BBBSI.DEMANDE (REF_DEMD,NUM_CMD,REF_CLASSE,REF_SERV,TYPE_DEMD,DATE_DEMD,ETAT_DEMD,REF_MAT,DATE_RETOUR,DESI_MAT) values ('6',2,'CL2','SR3','a',to_timestamp('12/01/20 18:07:13,000000000','DD/MM/RR HH24:MI:SS,FF'),'accepter',null,null,'Asus 450');
Insert into BBBSI.DEMANDE (REF_DEMD,NUM_CMD,REF_CLASSE,REF_SERV,TYPE_DEMD,DATE_DEMD,ETAT_DEMD,REF_MAT,DATE_RETOUR,DESI_MAT) values ('8',4,'CL5','SR5','e',to_timestamp('17/01/20 08:54:13,000000000','DD/MM/RR HH24:MI:SS,FF'),'accepter',null,'01/03/19','HP');
Insert into BBBSI.DEMANDE (REF_DEMD,NUM_CMD,REF_CLASSE,REF_SERV,TYPE_DEMD,DATE_DEMD,ETAT_DEMD,REF_MAT,DATE_RETOUR,DESI_MAT) values ('5',null,null,'SR3','e',to_timestamp('09/01/20 21:10:10,000000000','DD/MM/RR HH24:MI:SS,FF'),'accepter','MAT7','08/03/20','BUREAU 200x150');
Insert into BBBSI.DEMANDE (REF_DEMD,NUM_CMD,REF_CLASSE,REF_SERV,TYPE_DEMD,DATE_DEMD,ETAT_DEMD,REF_MAT,DATE_RETOUR,DESI_MAT) values ('1',null,null,'SR5','e',to_timestamp('06/01/20 20:56:02,000000000','DD/MM/RR HH24:MI:SS,FF'),'refuser','MAT8','20/02/2020','chaise');
Insert into BBBSI.DEMANDE (REF_DEMD,NUM_CMD,REF_CLASSE,REF_SERV,TYPE_DEMD,DATE_DEMD,ETAT_DEMD,REF_MAT,DATE_RETOUR,DESI_MAT) values ('3',null,null,'SR5','a',to_timestamp('07/01/20 22:19:17,000000000','DD/MM/RR HH24:MI:SS,FF'),null,'MAT5',null,'DESKTOP HP');

---------------------------------------------------
--   END DATA FOR TABLE DEMANDE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE ECRIRE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into BBBSI.ECRIRE

---------------------------------------------------
--   END DATA FOR TABLE ECRIRE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE EMPRUNT
--   FILTER = none used
---------------------------------------------------
REM INSERTING into BBBSI.EMPRUNT
Insert into BBBSI.EMPRUNT (ID_EMPRUNT,ID_RESP,REF_OUV,DEB_EMPRUNT,FIN_EMPRUNT,DATE_RETOUR,CIN_EMP) values (7,null,48,to_timestamp('05/01/20 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('10/01/20 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),null,'FB511');
Insert into BBBSI.EMPRUNT (ID_EMPRUNT,ID_RESP,REF_OUV,DEB_EMPRUNT,FIN_EMPRUNT,DATE_RETOUR,CIN_EMP) values (8,null,21,to_timestamp('17/01/20 05:04:43,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('15/01/20 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),null,'FFF547');
Insert into BBBSI.EMPRUNT (ID_EMPRUNT,ID_RESP,REF_OUV,DEB_EMPRUNT,FIN_EMPRUNT,DATE_RETOUR,CIN_EMP) values (9,null,4,to_timestamp('17/01/20 08:59:26,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('01/02/20 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),null,'SR258');
Insert into BBBSI.EMPRUNT (ID_EMPRUNT,ID_RESP,REF_OUV,DEB_EMPRUNT,FIN_EMPRUNT,DATE_RETOUR,CIN_EMP) values (3,null,76,to_timestamp('11/01/20 20:16:02,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('12/01/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('17/01/20 04:39:53,000000000','DD/MM/RR HH24:MI:SS,FF'),'SX546');
Insert into BBBSI.EMPRUNT (ID_EMPRUNT,ID_RESP,REF_OUV,DEB_EMPRUNT,FIN_EMPRUNT,DATE_RETOUR,CIN_EMP) values (4,null,27,to_timestamp('11/01/20 20:16:44,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('13/01/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('16/01/20 03:39:26,000000000','DD/MM/RR HH24:MI:SS,FF'),'SR258');
Insert into BBBSI.EMPRUNT (ID_EMPRUNT,ID_RESP,REF_OUV,DEB_EMPRUNT,FIN_EMPRUNT,DATE_RETOUR,CIN_EMP) values (1,null,74,to_timestamp('11/01/20 18:47:06,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('20/01/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('11/01/20 18:47:28,000000000','DD/MM/RR HH24:MI:SS,FF'),'SX546');
Insert into BBBSI.EMPRUNT (ID_EMPRUNT,ID_RESP,REF_OUV,DEB_EMPRUNT,FIN_EMPRUNT,DATE_RETOUR,CIN_EMP) values (2,null,24,to_timestamp('11/01/20 19:13:50,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('16/01/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('16/01/20 03:38:58,000000000','DD/MM/RR HH24:MI:SS,FF'),'SX546');
Insert into BBBSI.EMPRUNT (ID_EMPRUNT,ID_RESP,REF_OUV,DEB_EMPRUNT,FIN_EMPRUNT,DATE_RETOUR,CIN_EMP) values (6,null,56,to_timestamp('17/01/20 03:55:45,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('20/01/20 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),null,'RB455');
Insert into BBBSI.EMPRUNT (ID_EMPRUNT,ID_RESP,REF_OUV,DEB_EMPRUNT,FIN_EMPRUNT,DATE_RETOUR,CIN_EMP) values (5,null,42,to_timestamp('12/01/20 18:29:10,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('15/01/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('16/01/20 03:39:39,000000000','DD/MM/RR HH24:MI:SS,FF'),'DFR445');

---------------------------------------------------
--   END DATA FOR TABLE EMPRUNT
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE EMPRUNTER
--   FILTER = none used
---------------------------------------------------
REM INSERTING into BBBSI.EMPRUNTER
Insert into BBBSI.EMPRUNTER (REF_SERV,REF_MAT,DATE_DEB_EMPRUNT,DATE_FIN_EMPRUNT,ETAT_MAT) values ('SR5','MAT3',to_timestamp('01/11/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('31/01/20 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'neuf');
Insert into BBBSI.EMPRUNTER (REF_SERV,REF_MAT,DATE_DEB_EMPRUNT,DATE_FIN_EMPRUNT,ETAT_MAT) values ('SR4','MAT6',to_timestamp('01/01/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('01/01/20 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'neuf');
Insert into BBBSI.EMPRUNTER (REF_SERV,REF_MAT,DATE_DEB_EMPRUNT,DATE_FIN_EMPRUNT,ETAT_MAT) values ('SR4','MAT2',to_timestamp('22/11/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('01/02/20 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'neuf');
Insert into BBBSI.EMPRUNTER (REF_SERV,REF_MAT,DATE_DEB_EMPRUNT,DATE_FIN_EMPRUNT,ETAT_MAT) values ('SR4','MAT4',to_timestamp('10/01/20 10:33:47,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('01/03/20 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'bon état');
Insert into BBBSI.EMPRUNTER (REF_SERV,REF_MAT,DATE_DEB_EMPRUNT,DATE_FIN_EMPRUNT,ETAT_MAT) values ('SR3','MAT7',to_timestamp('09/01/20 21:12:05,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('08/03/20 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'neuf');
Insert into BBBSI.EMPRUNTER (REF_SERV,REF_MAT,DATE_DEB_EMPRUNT,DATE_FIN_EMPRUNT,ETAT_MAT) values ('SR5','MAT6',to_timestamp('09/01/20 20:54:34,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('15/02/20 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'à reformer');

---------------------------------------------------
--   END DATA FOR TABLE EMPRUNTER
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE EMPRUNTEUR
--   FILTER = none used
---------------------------------------------------
REM INSERTING into BBBSI.EMPRUNTEUR
Insert into BBBSI.EMPRUNTEUR (CIN_EMP,REF_FIL,NOM_EMP,PRENOM_EMP,TEL_EMP,GRADE_EMP,EMAIL_EMP) values ('DFR445','3','Kouraj','Ismail','0685471245','étudiant','k.ismail91@gmail.com');
Insert into BBBSI.EMPRUNTEUR (CIN_EMP,REF_FIL,NOM_EMP,PRENOM_EMP,TEL_EMP,GRADE_EMP,EMAIL_EMP) values ('FFF547','4','SAM','YOUSSEF','06897412458','professeur','samsam@gmail.com');
Insert into BBBSI.EMPRUNTEUR (CIN_EMP,REF_FIL,NOM_EMP,PRENOM_EMP,TEL_EMP,GRADE_EMP,EMAIL_EMP) values ('FB511','2','Sourani','Mhammed','0654785212','étudiant','m.sourani@gmail.com');
Insert into BBBSI.EMPRUNTEUR (CIN_EMP,REF_FIL,NOM_EMP,PRENOM_EMP,TEL_EMP,GRADE_EMP,EMAIL_EMP) values ('SX5462','5','Aakoubi','Siham','0687412354','étudiant','s.aakoubi@hotmail.com');
Insert into BBBSI.EMPRUNTEUR (CIN_EMP,REF_FIL,NOM_EMP,PRENOM_EMP,TEL_EMP,GRADE_EMP,EMAIL_EMP) values ('SR258','3','Sawmani','Khadija','0687451236','étudiant','s.khadija0@gmail.com');
Insert into BBBSI.EMPRUNTEUR (CIN_EMP,REF_FIL,NOM_EMP,PRENOM_EMP,TEL_EMP,GRADE_EMP,EMAIL_EMP) values ('RB455','1','ZOUAMBO','Yassine','0625854693','professeur','z.yassine80@live.fr');
Insert into BBBSI.EMPRUNTEUR (CIN_EMP,REF_FIL,NOM_EMP,PRENOM_EMP,TEL_EMP,GRADE_EMP,EMAIL_EMP) values ('SX546','4','barkani','ismail','0658741254','étudiant','ismail@gmail.com');

---------------------------------------------------
--   END DATA FOR TABLE EMPRUNTEUR
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE FILEIRE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into BBBSI.FILEIRE
Insert into BBBSI.FILEIRE (REF_FIL,DESI_FIL) values ('1','Developpement mobile');
Insert into BBBSI.FILEIRE (REF_FIL,DESI_FIL) values ('2','Développement web');
Insert into BBBSI.FILEIRE (REF_FIL,DESI_FIL) values ('3','Réseaux et sécurité informatique');
Insert into BBBSI.FILEIRE (REF_FIL,DESI_FIL) values ('4','Administration base de données');
Insert into BBBSI.FILEIRE (REF_FIL,DESI_FIL) values ('5','Bussines intelegent');

---------------------------------------------------
--   END DATA FOR TABLE FILEIRE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE FOURNISSEUR
--   FILTER = none used
---------------------------------------------------
REM INSERTING into BBBSI.FOURNISSEUR
Insert into BBBSI.FOURNISSEUR (CODE_FRS,NOM_FRS,ADDR_FRS,TEL_FRS) values (3,'SELCOMARIVA','Nador, Arouit','0536368954');
Insert into BBBSI.FOURNISSEUR (CODE_FRS,NOM_FRS,ADDR_FRS,TEL_FRS) values (1,'ELECTRONICA','Oujda angad','0536698741');
Insert into BBBSI.FOURNISSEUR (CODE_FRS,NOM_FRS,ADDR_FRS,TEL_FRS) values (2,'ELECATON','Casablanca Ain sebaa','0562429875');

---------------------------------------------------
--   END DATA FOR TABLE FOURNISSEUR
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE IMAGE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into BBBSI.IMAGE

---------------------------------------------------
--   END DATA FOR TABLE IMAGE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE LIVRAISON
--   FILTER = none used
---------------------------------------------------
REM INSERTING into BBBSI.LIVRAISON
Insert into BBBSI.LIVRAISON (NUM_LIV,DATE_LIV,CODE_FRS) values (12,to_timestamp('12/10/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),1);
Insert into BBBSI.LIVRAISON (NUM_LIV,DATE_LIV,CODE_FRS) values (10,to_timestamp('01/10/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),2);
Insert into BBBSI.LIVRAISON (NUM_LIV,DATE_LIV,CODE_FRS) values (9,to_timestamp('30/09/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),1);
Insert into BBBSI.LIVRAISON (NUM_LIV,DATE_LIV,CODE_FRS) values (2,to_timestamp('01/07/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),1);
Insert into BBBSI.LIVRAISON (NUM_LIV,DATE_LIV,CODE_FRS) values (1,to_timestamp('02/08/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),2);
Insert into BBBSI.LIVRAISON (NUM_LIV,DATE_LIV,CODE_FRS) values (3,to_timestamp('03/11/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),1);
Insert into BBBSI.LIVRAISON (NUM_LIV,DATE_LIV,CODE_FRS) values (4,to_timestamp('15/11/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),2);
Insert into BBBSI.LIVRAISON (NUM_LIV,DATE_LIV,CODE_FRS) values (5,to_timestamp('02/11/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),2);
Insert into BBBSI.LIVRAISON (NUM_LIV,DATE_LIV,CODE_FRS) values (6,to_timestamp('13/11/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),1);
Insert into BBBSI.LIVRAISON (NUM_LIV,DATE_LIV,CODE_FRS) values (7,to_timestamp('07/02/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),1);
Insert into BBBSI.LIVRAISON (NUM_LIV,DATE_LIV,CODE_FRS) values (13,to_timestamp('07/08/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),2);
Insert into BBBSI.LIVRAISON (NUM_LIV,DATE_LIV,CODE_FRS) values (14,to_timestamp('02/02/18 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),1);
Insert into BBBSI.LIVRAISON (NUM_LIV,DATE_LIV,CODE_FRS) values (15,to_timestamp('10/12/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),2);

---------------------------------------------------
--   END DATA FOR TABLE LIVRAISON
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE MATERIEL
--   FILTER = none used
---------------------------------------------------
REM INSERTING into BBBSI.MATERIEL
Insert into BBBSI.MATERIEL (REF_MAT,NUM_LIV,REF_SERV,DESI_MAT,ETAT_MAT,DATE_ACHAT,DATE_AFFECTATION,TVA,PRIXHT,IMAGE_PATH,SITUATION) values ('MAT6',1,'SR3','HP HORIZON modee','à reformer',to_timestamp('01/07/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'05/01/20',0,2,1450,'C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\MAT6.jpg','a');
Insert into BBBSI.MATERIEL (REF_MAT,NUM_LIV,REF_SERV,DESI_MAT,ETAT_MAT,DATE_ACHAT,DATE_AFFECTATION,TVA,PRIXHT,IMAGE_PATH,SITUATION) values ('MAT7',2,'SR5','BUREAU 200x150','neuf',to_timestamp('02/07/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'24/07/19',0,2,758,'C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\MAT7.jpg','a');
Insert into BBBSI.MATERIEL (REF_MAT,NUM_LIV,REF_SERV,DESI_MAT,ETAT_MAT,DATE_ACHAT,DATE_AFFECTATION,TVA,PRIXHT,IMAGE_PATH,SITUATION) values ('MAT5',1,'SR1','DESKTOP HP','neuf',to_timestamp('09/07/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),null,0,2,2000,'C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\MAT5.jpg','n');
Insert into BBBSI.MATERIEL (REF_MAT,NUM_LIV,REF_SERV,DESI_MAT,ETAT_MAT,DATE_ACHAT,DATE_AFFECTATION,TVA,PRIXHT,IMAGE_PATH,SITUATION) values ('MAT2',2,'SR5','SOURIS Gng 111','neuf',to_timestamp('01/07/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'20/07/19',0,2,120,'C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\MAT2.jpg','a');
Insert into BBBSI.MATERIEL (REF_MAT,NUM_LIV,REF_SERV,DESI_MAT,ETAT_MAT,DATE_ACHAT,DATE_AFFECTATION,TVA,PRIXHT,IMAGE_PATH,SITUATION) values ('MAT3',2,'SR2','SOURIS','neuf',to_timestamp('01/07/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'04/01/20',0,2,130,'C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\MAT3.jpg','a');
Insert into BBBSI.MATERIEL (REF_MAT,NUM_LIV,REF_SERV,DESI_MAT,ETAT_MAT,DATE_ACHAT,DATE_AFFECTATION,TVA,PRIXHT,IMAGE_PATH,SITUATION) values ('MAT4',1,'SR5','IMPRIMANT 20X HP','bon état',to_timestamp('07/07/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'04/08/19',0,2,570,'C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\MAT4.jpg','a');
Insert into BBBSI.MATERIEL (REF_MAT,NUM_LIV,REF_SERV,DESI_MAT,ETAT_MAT,DATE_ACHAT,DATE_AFFECTATION,TVA,PRIXHT,IMAGE_PATH,SITUATION) values ('MAT8',2,'SR3','chaise','bon état',to_timestamp('07/07/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'04/01/20',0,2,50,'C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\MAT8','a');
Insert into BBBSI.MATERIEL (REF_MAT,NUM_LIV,REF_SERV,DESI_MAT,ETAT_MAT,DATE_ACHAT,DATE_AFFECTATION,TVA,PRIXHT,IMAGE_PATH,SITUATION) values ('MAT1',9,'SR1','Desktop HP X25','neuf',to_timestamp('20/09/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),null,0,2,1200,'C:\Users\hp\Desktop\MAT1.jpg','n');

---------------------------------------------------
--   END DATA FOR TABLE MATERIEL
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE OCCUPER
--   FILTER = none used
---------------------------------------------------
REM INSERTING into BBBSI.OCCUPER
Insert into BBBSI.OCCUPER (ID_RESP,REF_SERV,DATE_OCCUPATION) values ('EMP4','SR5',to_timestamp('05/09/15 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into BBBSI.OCCUPER (ID_RESP,REF_SERV,DATE_OCCUPATION) values ('EMP6','SR4',to_timestamp('09/11/11 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into BBBSI.OCCUPER (ID_RESP,REF_SERV,DATE_OCCUPATION) values ('EMP7','SR6',to_timestamp('25/08/16 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into BBBSI.OCCUPER (ID_RESP,REF_SERV,DATE_OCCUPATION) values ('EMP10','SR3',to_timestamp('31/12/10 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into BBBSI.OCCUPER (ID_RESP,REF_SERV,DATE_OCCUPATION) values ('EMP0','SR2',to_timestamp('06/01/09 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into BBBSI.OCCUPER (ID_RESP,REF_SERV,DATE_OCCUPATION) values ('EMP1','SR1',to_timestamp('05/05/06 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into BBBSI.OCCUPER (ID_RESP,REF_SERV,DATE_OCCUPATION) values ('EMP9','SR11',to_timestamp('03/01/20 15:02:28,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into BBBSI.OCCUPER (ID_RESP,REF_SERV,DATE_OCCUPATION) values ('EMP2','SR7',to_timestamp('03/01/20 14:05:20,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into BBBSI.OCCUPER (ID_RESP,REF_SERV,DATE_OCCUPATION) values ('EMP3','SR8',to_timestamp('03/01/20 14:14:46,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into BBBSI.OCCUPER (ID_RESP,REF_SERV,DATE_OCCUPATION) values ('EMP8','SR10',to_timestamp('03/01/20 14:42:20,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into BBBSI.OCCUPER (ID_RESP,REF_SERV,DATE_OCCUPATION) values ('EMP11','SR11',to_timestamp('03/01/20 18:28:58,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into BBBSI.OCCUPER (ID_RESP,REF_SERV,DATE_OCCUPATION) values ('EMP5','SR9',to_timestamp('03/01/20 14:34:12,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into BBBSI.OCCUPER (ID_RESP,REF_SERV,DATE_OCCUPATION) values ('EMP12','SR11',to_timestamp('03/01/20 18:02:00,000000000','DD/MM/RR HH24:MI:SS,FF'));

---------------------------------------------------
--   END DATA FOR TABLE OCCUPER
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE OUVRAGE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into BBBSI.OUVRAGE
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (1,1,'les réseaux de mobile','BIF2001','DUNOD',to_timestamp('10/02/07 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'André Préze','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2001.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (2,1,'programmation en C++','BIF3010','EYROLLS',to_timestamp('07/08/02 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'George Chansaan','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF3010.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (3,1,'LINUX','BIF2541','DUNOD',to_timestamp('21/11/10 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Segoere Northman','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2541.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (4,1,'ERP ET PROGICIELS','BIF1010','MICROSOFT',to_timestamp('14/02/04 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Youssef Kariim','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF1010.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (5,1,'DATA MINING','BIF445','EYROLLS',to_timestamp('10/03/12 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Same Kathrin','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF445.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (6,1,'les réseaux de mobile','BIF2001','DUNOD',to_timestamp('10/02/07 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'André Préze','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2001.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (7,1,'les réseaux de mobile','BIF2001','DUNOD',to_timestamp('10/02/07 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'André Préze','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2001.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (8,1,'les réseaux de mobile','BIF2001','DUNOD',to_timestamp('10/02/07 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'André Préze','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2001.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (9,1,'les réseaux de mobile','BIF2001','DUNOD',to_timestamp('10/02/07 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'André Préze','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2001.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (10,1,'les réseaux de mobile','BIF2001','DUNOD',to_timestamp('10/02/07 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'André Préze','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2001.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (11,1,'les réseaux de mobile','BIF2001','DUNOD',to_timestamp('10/02/07 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'André Préze','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2001.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (12,1,'les réseaux de mobile','BIF2001','DUNOD',to_timestamp('10/02/07 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'André Préze','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2001.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (13,1,'les réseaux de mobile','BIF2001','DUNOD',to_timestamp('10/02/07 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'André Préze','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2001.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (14,1,'les réseaux de mobile','BIF2001','DUNOD',to_timestamp('10/02/07 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'André Préze','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2001.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (15,1,'les réseaux de mobile','BIF2001','DUNOD',to_timestamp('10/02/07 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'André Préze','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2001.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (16,1,'DATA MINING','BIF445','EYROLLS',to_timestamp('10/03/12 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Same Kathrin','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF445.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (17,1,'DATA MINING','BIF445','EYROLLS',to_timestamp('10/03/12 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Same Kathrin','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF445.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (18,1,'DATA MINING','BIF445','EYROLLS',to_timestamp('10/03/12 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Same Kathrin','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF445.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (19,1,'DATA MINING','BIF445','EYROLLS',to_timestamp('10/03/12 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Same Kathrin','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF445.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (20,1,'DATA MINING','BIF445','EYROLLS',to_timestamp('10/03/12 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Same Kathrin','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF445.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (21,1,'DATA MINING','BIF445','EYROLLS',to_timestamp('10/03/12 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Same Kathrin','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF445.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (22,1,'DATA MINING','BIF445','EYROLLS',to_timestamp('10/03/12 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Same Kathrin','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF445.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (24,1,'DATA MINING','BIF445','EYROLLS',to_timestamp('10/03/12 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Same Kathrin','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF445.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (25,1,'programmation en C++','BIF3010','EYROLLS',to_timestamp('07/08/02 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'George Chansaan','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF3010.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (27,1,'programmation en C++','BIF3010','EYROLLS',to_timestamp('07/08/02 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'George Chansaan','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF3010.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (29,1,'LINUX','BIF2541','DUNOD',to_timestamp('21/11/10 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Segoere Northman','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2541.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (30,1,'LINUX','BIF2541','DUNOD',to_timestamp('21/11/10 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Segoere Northman','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2541.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (31,1,'LINUX','BIF2541','DUNOD',to_timestamp('21/11/10 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Segoere Northman','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2541.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (32,1,'LINUX','BIF2541','DUNOD',to_timestamp('21/11/10 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Segoere Northman','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2541.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (38,4,'La loi de la chair. Le droit au corps du conjoint dans l''oeuvre des canonistes (XIIe-XVe siècle)','BIF2860','SORBONNE ',to_timestamp('20/11/15 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Marta Madero','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2860.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (39,4,'La loi de la chair. Le droit au corps du conjoint dans l''oeuvre des canonistes (XIIe-XVe siècle)','BIF2860','SORBONNE ',to_timestamp('20/11/15 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Marta Madero','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2860.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (40,4,'La loi de la chair. Le droit au corps du conjoint dans l''oeuvre des canonistes (XIIe-XVe siècle)','BIF2860','SORBONNE ',to_timestamp('20/11/15 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Marta Madero','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2860.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (42,4,'La loi de la chair. Le droit au corps du conjoint dans l''oeuvre des canonistes (XIIe-XVe siècle)','BIF2860','SORBONNE ',to_timestamp('20/11/15 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Marta Madero','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2860.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (43,5,'La ville, le gouvernement et l''écrit à Montpellier (XIIe-XIVe siècle) : Essai d''histoire sociale','BIF2755','SORBONNE',to_timestamp('29/08/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Pierre Chastang','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2755.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (44,5,'La ville, le gouvernement et l''écrit à Montpellier (XIIe-XIVe siècle) : Essai d''histoire sociale','BIF2755','SORBONNE',to_timestamp('29/08/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Pierre Chastang','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2755.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (45,5,'La ville, le gouvernement et l''écrit à Montpellier (XIIe-XIVe siècle) : Essai d''histoire sociale','BIF2755','SORBONNE',to_timestamp('29/08/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Pierre Chastang','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2755.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (46,5,'La ville, le gouvernement et l''écrit à Montpellier (XIIe-XIVe siècle) : Essai d''histoire sociale','BIF2755','SORBONNE',to_timestamp('29/08/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Pierre Chastang','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2755.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (47,5,'La ville, le gouvernement et l''écrit à Montpellier (XIIe-XIVe siècle) : Essai d''histoire sociale','BIF2755','SORBONNE',to_timestamp('29/08/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Pierre Chastang','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2755.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (48,5,'La ville, le gouvernement et l''écrit à Montpellier (XIIe-XIVe siècle) : Essai d''histoire sociale','BIF2755','SORBONNE',to_timestamp('29/08/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Pierre Chastang','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2755.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (49,5,'La ville, le gouvernement et l''écrit à Montpellier (XIIe-XIVe siècle) : Essai d''histoire sociale','BIF2755','SORBONNE',to_timestamp('29/08/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Pierre Chastang','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2755.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (50,5,'Les Cris de Paris ou le peuple travesti : les représentations des petits métiers','BIF3333','SORBONNE',to_timestamp('04/08/95 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Vincent Milliot','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF3333.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (52,5,'Les Cris de Paris ou le peuple travesti : les représentations des petits métiers','BIF3333','SORBONNE',to_timestamp('04/08/95 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Vincent Milliot','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF3333.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (53,5,'Les Cris de Paris ou le peuple travesti : les représentations des petits métiers','BIF3333','SORBONNE',to_timestamp('04/08/95 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Vincent Milliot','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF3333.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (55,5,'Les Cris de Paris ou le peuple travesti : les représentations des petits métiers','BIF3333','SORBONNE',to_timestamp('04/08/95 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Vincent Milliot','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF3333.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (56,3,'Le cours de physique de Feynman - Electromagnétisme','BIF1212','Dunod',to_timestamp('01/11/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Richard Feynman','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF1212.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (57,3,'Le cours de physique de Feynman - Electromagnétisme','BIF1212','Dunod',to_timestamp('01/11/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Richard Feynman','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF1212.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (58,3,'Le cours de physique de Feynman - Electromagnétisme','BIF1212','Dunod',to_timestamp('01/11/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Richard Feynman','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF1212.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (59,3,'Le cours de physique de Feynman - Electromagnétisme','BIF1212','Dunod',to_timestamp('01/11/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Richard Feynman','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF1212.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (60,3,'Le cours de physique de Feynman - Electromagnétisme','BIF1212','Dunod',to_timestamp('01/11/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Richard Feynman','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF1212.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (73,5,'Le dernier mort de Mitterand','BIF222','GRASSET',to_timestamp('05/05/10 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Raphaelle bacqué','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF222.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (74,5,'Le dernier mort de Mitterand','BIF222','GRASSET',to_timestamp('05/05/10 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Raphaelle bacqué','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF222.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (75,5,'Le dernier mort de Mitterand','BIF222','GRASSET',to_timestamp('05/05/10 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Raphaelle bacqué','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF222.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (76,5,'Le dernier mort de Mitterand','BIF222','GRASSET',to_timestamp('05/05/10 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Raphaelle bacqué','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF222.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (72,5,'Le dernier mort de Mitterand','BIF222','GRASSET',to_timestamp('05/05/10 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Raphaelle bacqué','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF222.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (41,4,'La loi de la chair. Le droit au corps du conjoint dans l''oeuvre des canonistes (XIIe-XVe siècle)','BIF2860','SORBONNE ',to_timestamp('20/11/15 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Marta Madero','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2860.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (26,1,'programmation en C++','BIF3010','EYROLLS',to_timestamp('07/08/02 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'George Chansaan','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF3010.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (28,1,'programmation en C++','BIF3010','EYROLLS',to_timestamp('07/08/02 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'George Chansaan','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF3010.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (51,5,'Les Cris de Paris ou le peuple travesti : les représentations des petits métiers','BIF3333','SORBONNE',to_timestamp('04/08/95 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Vincent Milliot','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF3333.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (54,5,'Les Cris de Paris ou le peuple travesti : les représentations des petits métiers','BIF3333','SORBONNE',to_timestamp('04/08/95 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Vincent Milliot','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF3333.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (61,4,'Spinoza : La raison à l''épreuve de la pratique','BIF2859','SORBONNE',to_timestamp('14/03/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Juan Vicente Cortés','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2859.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (62,4,'Spinoza : La raison à l''épreuve de la pratique','BIF2859','SORBONNE',to_timestamp('14/03/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Juan Vicente Cortés','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2859.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (63,4,'Spinoza : La raison à l''épreuve de la pratique','BIF2859','SORBONNE',to_timestamp('14/03/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Juan Vicente Cortés','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2859.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (64,4,'Spinoza : La raison à l''épreuve de la pratique','BIF2859','SORBONNE',to_timestamp('14/03/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Juan Vicente Cortés','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2859.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (65,4,'Spinoza : La raison à l''épreuve de la pratique','BIF2859','SORBONNE',to_timestamp('14/03/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Juan Vicente Cortés','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2859.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (66,4,'Spinoza : La raison à l''épreuve de la pratique','BIF2859','SORBONNE',to_timestamp('14/03/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Juan Vicente Cortés','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2859.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (67,4,'Spinoza : La raison à l''épreuve de la pratique','BIF2859','SORBONNE',to_timestamp('14/03/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Juan Vicente Cortés','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2859.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (68,4,'Spinoza : La raison à l''épreuve de la pratique','BIF2859','SORBONNE',to_timestamp('14/03/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Juan Vicente Cortés','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2859.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (69,4,'Spinoza : La raison à l''épreuve de la pratique','BIF2859','SORBONNE',to_timestamp('14/03/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Juan Vicente Cortés','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2859.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (70,4,'Spinoza : La raison à l''épreuve de la pratique','BIF2859','SORBONNE',to_timestamp('14/03/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Juan Vicente Cortés','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2859.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (71,4,'Spinoza : La raison à l''épreuve de la pratique','BIF2859','SORBONNE',to_timestamp('14/03/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Juan Vicente Cortés','bon état','C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\BIF2859.jpg');
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (77,1,'les réseaux de mobile','BIF2001','DUNOD',to_timestamp('10/02/07 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'André Préze','bon état',null);
Insert into BBBSI.OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR,IMAGE_PATH) values (78,1,'les réseaux de mobile','BIF2001','DUNOD',to_timestamp('10/02/07 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'André Préze','bon état',null);

---------------------------------------------------
--   END DATA FOR TABLE OUVRAGE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE RECLAMATION
--   FILTER = none used
---------------------------------------------------
REM INSERTING into BBBSI.RECLAMATION
Insert into BBBSI.RECLAMATION (REF_REC,REF_MAT,REF_SERV,DETAILLE,ETAT_MAT,DATE_REC) values (1,'MAT6','SR5','probleme au niveau de RAM','à reformer','16/01/20');

---------------------------------------------------
--   END DATA FOR TABLE RECLAMATION
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE RESPONSABLE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into BBBSI.RESPONSABLE
Insert into BBBSI.RESPONSABLE (ID_RESP,NOM_RESP,PRENOM_RESP,EMAIL_RESP,TEL_RESP,GRADE_RESP,IMAGE,PASSWORD) values ('EMP4','SAOUIN','JABRAN','j','0682114725','PES',null,'abcdd');
Insert into BBBSI.RESPONSABLE (ID_RESP,NOM_RESP,PRENOM_RESP,EMAIL_RESP,TEL_RESP,GRADE_RESP,IMAGE,PASSWORD) values ('EMP0','BAKOURI','SIHAM','bakourisiham@gmail.com','0652114695','PES',null,'abcd');
Insert into BBBSI.RESPONSABLE (ID_RESP,NOM_RESP,PRENOM_RESP,EMAIL_RESP,TEL_RESP,GRADE_RESP,IMAGE,PASSWORD) values ('EMP10','BENALA','KAMAL','b','0654871235','PES',null,'abcd');
Insert into BBBSI.RESPONSABLE (ID_RESP,NOM_RESP,PRENOM_RESP,EMAIL_RESP,TEL_RESP,GRADE_RESP,IMAGE,PASSWORD) values ('EMP6','CHAILAT','DOUNIA','dounia@gmail.com','0658765812','PES',null,'abcd');
Insert into BBBSI.RESPONSABLE (ID_RESP,NOM_RESP,PRENOM_RESP,EMAIL_RESP,TEL_RESP,GRADE_RESP,IMAGE,PASSWORD) values ('EMP1','ADARRAF','ISMAIL','a.ismail@gmail.com','0638314588','PES',null,'abcd');
Insert into BBBSI.RESPONSABLE (ID_RESP,NOM_RESP,PRENOM_RESP,EMAIL_RESP,TEL_RESP,GRADE_RESP,IMAGE,PASSWORD) values ('EMP7','AMOUH','HOUSSAM','houssam22@gmail.com','0652478406','PES',null,'abcd');
Insert into BBBSI.RESPONSABLE (ID_RESP,NOM_RESP,PRENOM_RESP,EMAIL_RESP,TEL_RESP,GRADE_RESP,IMAGE,PASSWORD) values ('EMP9','Naou','Naouale','na.naouale@gmail.com','0654789632','MA',null,'abcd');
Insert into BBBSI.RESPONSABLE (ID_RESP,NOM_RESP,PRENOM_RESP,EMAIL_RESP,TEL_RESP,GRADE_RESP,IMAGE,PASSWORD) values ('EMP2','Bouzahra','Abelillah','A.bouzahra@gmail.com','0655847122','PES',null,'abcd');
Insert into BBBSI.RESPONSABLE (ID_RESP,NOM_RESP,PRENOM_RESP,EMAIL_RESP,TEL_RESP,GRADE_RESP,IMAGE,PASSWORD) values ('EMP3','Somari','Khalid','Kh.soumari1@gmail.com','0688471252','PH',null,'abcd');
Insert into BBBSI.RESPONSABLE (ID_RESP,NOM_RESP,PRENOM_RESP,EMAIL_RESP,TEL_RESP,GRADE_RESP,IMAGE,PASSWORD) values ('EMP8','Siouart','Hassan','S.hassouart@gmail.com','0652874169','PAg',null,'abcd');
Insert into BBBSI.RESPONSABLE (ID_RESP,NOM_RESP,PRENOM_RESP,EMAIL_RESP,TEL_RESP,GRADE_RESP,IMAGE,PASSWORD) values ('EMP11','HAKIM','Mohamed','hakimhakim@gmail.com','0685471245','PH',null,'abcd');
Insert into BBBSI.RESPONSABLE (ID_RESP,NOM_RESP,PRENOM_RESP,EMAIL_RESP,TEL_RESP,GRADE_RESP,IMAGE,PASSWORD) values ('EMP12','SOUAD','SALAM','s.salam23@hotmail.fr','0698541236','PES',null,'abcd');
Insert into BBBSI.RESPONSABLE (ID_RESP,NOM_RESP,PRENOM_RESP,EMAIL_RESP,TEL_RESP,GRADE_RESP,IMAGE,PASSWORD) values ('EMP5','Moussati','Oussama','o.moussati@homtail.fr','0647125487','PH',null,'abcd');

---------------------------------------------------
--   END DATA FOR TABLE RESPONSABLE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE SANCTION
--   FILTER = none used
---------------------------------------------------
REM INSERTING into BBBSI.SANCTION

---------------------------------------------------
--   END DATA FOR TABLE SANCTION
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE SERVICE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into BBBSI.SERVICE
Insert into BBBSI.SERVICE (REF_SERV,DESI_SERV,REF_RESP) values ('SR1','Direction','EMP1');
Insert into BBBSI.SERVICE (REF_SERV,DESI_SERV,REF_RESP) values ('SR2','Mathématique appliqué','EMP0');
Insert into BBBSI.SERVICE (REF_SERV,DESI_SERV,REF_RESP) values ('SR3','Bibliothéque','EMP10');
Insert into BBBSI.SERVICE (REF_SERV,DESI_SERV,REF_RESP) values ('SR4','Réseaux & sécurité informatique','EMP6');
Insert into BBBSI.SERVICE (REF_SERV,DESI_SERV,REF_RESP) values ('SR5','Génie logiciel','EMP4');
Insert into BBBSI.SERVICE (REF_SERV,DESI_SERV,REF_RESP) values ('SR6','Informatique décisionnelle','EMP7');
Insert into BBBSI.SERVICE (REF_SERV,DESI_SERV,REF_RESP) values ('SR7','Développement Mobile','EMP2');
Insert into BBBSI.SERVICE (REF_SERV,DESI_SERV,REF_RESP) values ('SR8','Innovation','EMP3');
Insert into BBBSI.SERVICE (REF_SERV,DESI_SERV,REF_RESP) values ('SR10','Informatique Industrielle','EMP8');
Insert into BBBSI.SERVICE (REF_SERV,DESI_SERV,REF_RESP) values ('SR9','Maching learning','EMP5');

---------------------------------------------------
--   END DATA FOR TABLE SERVICE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE TYPE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into BBBSI.TYPE
Insert into BBBSI.TYPE (NUM_TYPE,TYPE_OU) values (1,'informatique');
Insert into BBBSI.TYPE (NUM_TYPE,TYPE_OU) values (2,'mathematique');
Insert into BBBSI.TYPE (NUM_TYPE,TYPE_OU) values (3,'physique');
Insert into BBBSI.TYPE (NUM_TYPE,TYPE_OU) values (4,'Logique');
Insert into BBBSI.TYPE (NUM_TYPE,TYPE_OU) values (5,'Politique');

---------------------------------------------------
--   END DATA FOR TABLE TYPE
---------------------------------------------------

--------------------------------------------------------
--  Constraints for Table RECLAMATION
--------------------------------------------------------

  ALTER TABLE "BBBSI"."RECLAMATION" ADD CONSTRAINT "RECLAMATION_PK" PRIMARY KEY ("REF_REC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "BBBSI"."RECLAMATION" MODIFY ("REF_REC" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LIVRAISON
--------------------------------------------------------

  ALTER TABLE "BBBSI"."LIVRAISON" MODIFY ("CODE_FRS" NOT NULL ENABLE);
 
  ALTER TABLE "BBBSI"."LIVRAISON" ADD PRIMARY KEY ("NUM_LIV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SERVICE
--------------------------------------------------------

  ALTER TABLE "BBBSI"."SERVICE" ADD PRIMARY KEY ("REF_SERV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ECRIRE
--------------------------------------------------------

  ALTER TABLE "BBBSI"."ECRIRE" ADD CONSTRAINT "PK_ECRIRE" PRIMARY KEY ("NUM_AUT", "REF_OUV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EMPRUNTEUR
--------------------------------------------------------

  ALTER TABLE "BBBSI"."EMPRUNTEUR" ADD PRIMARY KEY ("CIN_EMP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "BBBSI"."EMPRUNTEUR" MODIFY ("REF_FIL" NOT NULL ENABLE);
 
  ALTER TABLE "BBBSI"."EMPRUNTEUR" MODIFY ("PRENOM_EMP" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table IMAGE
--------------------------------------------------------

  ALTER TABLE "BBBSI"."IMAGE" ADD PRIMARY KEY ("REF_IMAGE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table OUVRAGE
--------------------------------------------------------

  ALTER TABLE "BBBSI"."OUVRAGE" ADD PRIMARY KEY ("REF_OUV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RESPONSABLE
--------------------------------------------------------

  ALTER TABLE "BBBSI"."RESPONSABLE" ADD PRIMARY KEY ("ID_RESP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table OCCUPER
--------------------------------------------------------

  ALTER TABLE "BBBSI"."OCCUPER" ADD CONSTRAINT "PK_OCCUPER" PRIMARY KEY ("ID_RESP", "REF_SERV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "BBBSI"."OCCUPER" MODIFY ("ID_RESP" NOT NULL ENABLE);
 
  ALTER TABLE "BBBSI"."OCCUPER" MODIFY ("REF_SERV" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SANCTION
--------------------------------------------------------

  ALTER TABLE "BBBSI"."SANCTION" ADD PRIMARY KEY ("NUM_SANC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CATALOGUE
--------------------------------------------------------

  ALTER TABLE "BBBSI"."CATALOGUE" MODIFY ("CODE_FRS" NOT NULL ENABLE);
 
  ALTER TABLE "BBBSI"."CATALOGUE" ADD PRIMARY KEY ("REF_CLASSE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table AUTEUR
--------------------------------------------------------

  ALTER TABLE "BBBSI"."AUTEUR" ADD PRIMARY KEY ("NUM_AUT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EMPRUNTER
--------------------------------------------------------

  ALTER TABLE "BBBSI"."EMPRUNTER" ADD CONSTRAINT "PK_EMPRUNTER" PRIMARY KEY ("REF_SERV", "REF_MAT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "BBBSI"."EMPRUNTER" MODIFY ("REF_MAT" NOT NULL ENABLE);
 
  ALTER TABLE "BBBSI"."EMPRUNTER" MODIFY ("REF_SERV" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPRUNT
--------------------------------------------------------

  ALTER TABLE "BBBSI"."EMPRUNT" ADD PRIMARY KEY ("ID_EMPRUNT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FOURNISSEUR
--------------------------------------------------------

  ALTER TABLE "BBBSI"."FOURNISSEUR" ADD PRIMARY KEY ("CODE_FRS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMMANDE
--------------------------------------------------------

  ALTER TABLE "BBBSI"."COMMANDE" MODIFY ("CODE_FRS" NOT NULL ENABLE);
 
  ALTER TABLE "BBBSI"."COMMANDE" ADD PRIMARY KEY ("NUM_COMD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DEMANDE
--------------------------------------------------------

  ALTER TABLE "BBBSI"."DEMANDE" ADD PRIMARY KEY ("REF_DEMD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FILEIRE
--------------------------------------------------------

  ALTER TABLE "BBBSI"."FILEIRE" ADD PRIMARY KEY ("REF_FIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TYPE
--------------------------------------------------------

  ALTER TABLE "BBBSI"."TYPE" ADD PRIMARY KEY ("NUM_TYPE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MATERIEL
--------------------------------------------------------

  ALTER TABLE "BBBSI"."MATERIEL" MODIFY ("NUM_LIV" NOT NULL ENABLE);
 
  ALTER TABLE "BBBSI"."MATERIEL" MODIFY ("REF_SERV" NOT NULL ENABLE);
 
  ALTER TABLE "BBBSI"."MATERIEL" ADD PRIMARY KEY ("REF_MAT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  DDL for Index PK_ECRIRE
--------------------------------------------------------

  CREATE UNIQUE INDEX "BBBSI"."PK_ECRIRE" ON "BBBSI"."ECRIRE" ("NUM_AUT", "REF_OUV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index RECLAMATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BBBSI"."RECLAMATION_PK" ON "BBBSI"."RECLAMATION" ("REF_REC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_EMPRUNTER
--------------------------------------------------------

  CREATE UNIQUE INDEX "BBBSI"."PK_EMPRUNTER" ON "BBBSI"."EMPRUNTER" ("REF_SERV", "REF_MAT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_OCCUPER
--------------------------------------------------------

  CREATE UNIQUE INDEX "BBBSI"."PK_OCCUPER" ON "BBBSI"."OCCUPER" ("ID_RESP", "REF_SERV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

--------------------------------------------------------
--  Ref Constraints for Table CATALOGUE
--------------------------------------------------------

  ALTER TABLE "BBBSI"."CATALOGUE" ADD CONSTRAINT "CODE_FRS_FRGN_CAT" FOREIGN KEY ("CODE_FRS")
	  REFERENCES "BBBSI"."FOURNISSEUR" ("CODE_FRS") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMANDE
--------------------------------------------------------

  ALTER TABLE "BBBSI"."COMMANDE" ADD CONSTRAINT "CODE_FRS_FRGN_CMD" FOREIGN KEY ("CODE_FRS")
	  REFERENCES "BBBSI"."FOURNISSEUR" ("CODE_FRS") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DEMANDE
--------------------------------------------------------

  ALTER TABLE "BBBSI"."DEMANDE" ADD CONSTRAINT "NUM_CMD_FRGN" FOREIGN KEY ("NUM_CMD")
	  REFERENCES "BBBSI"."COMMANDE" ("NUM_COMD") ENABLE;
 
  ALTER TABLE "BBBSI"."DEMANDE" ADD CONSTRAINT "REF_SERV_FRGN_DEMD" FOREIGN KEY ("REF_MAT")
	  REFERENCES "BBBSI"."MATERIEL" ("REF_MAT") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table EMPRUNT
--------------------------------------------------------

  ALTER TABLE "BBBSI"."EMPRUNT" ADD CONSTRAINT "EMPRUNT_EMPRUNTEUR_FK1" FOREIGN KEY ("CIN_EMP")
	  REFERENCES "BBBSI"."EMPRUNTEUR" ("CIN_EMP") ENABLE;
 
  ALTER TABLE "BBBSI"."EMPRUNT" ADD CONSTRAINT "ID_RESP_FRGN" FOREIGN KEY ("ID_RESP")
	  REFERENCES "BBBSI"."RESPONSABLE" ("ID_RESP") ENABLE;
 
  ALTER TABLE "BBBSI"."EMPRUNT" ADD CONSTRAINT "REF_OUV_FRGN" FOREIGN KEY ("REF_OUV")
	  REFERENCES "BBBSI"."OUVRAGE" ("REF_OUV") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table EMPRUNTEUR
--------------------------------------------------------

  ALTER TABLE "BBBSI"."EMPRUNTEUR" ADD CONSTRAINT "REF_FIL_FRGN" FOREIGN KEY ("REF_FIL")
	  REFERENCES "BBBSI"."FILEIRE" ("REF_FIL") ENABLE;


--------------------------------------------------------
--  Ref Constraints for Table IMAGE
--------------------------------------------------------

  ALTER TABLE "BBBSI"."IMAGE" ADD CONSTRAINT "REF_MAT_FRGN" FOREIGN KEY ("REF_MAT")
	  REFERENCES "BBBSI"."MATERIEL" ("REF_MAT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LIVRAISON
--------------------------------------------------------

  ALTER TABLE "BBBSI"."LIVRAISON" ADD CONSTRAINT "CODE_FRS_FRGN" FOREIGN KEY ("CODE_FRS")
	  REFERENCES "BBBSI"."FOURNISSEUR" ("CODE_FRS") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MATERIEL
--------------------------------------------------------

  ALTER TABLE "BBBSI"."MATERIEL" ADD CONSTRAINT "NUM_LIV_FRGN" FOREIGN KEY ("NUM_LIV")
	  REFERENCES "BBBSI"."LIVRAISON" ("NUM_LIV") ENABLE;
 
  ALTER TABLE "BBBSI"."MATERIEL" ADD CONSTRAINT "REF_SERV_FRGN" FOREIGN KEY ("REF_SERV")
	  REFERENCES "BBBSI"."SERVICE" ("REF_SERV") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table OUVRAGE
--------------------------------------------------------

  ALTER TABLE "BBBSI"."OUVRAGE" ADD CONSTRAINT "NUM_TYPE_FRGN" FOREIGN KEY ("NUM_TYPE")
	  REFERENCES "BBBSI"."TYPE" ("NUM_TYPE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RECLAMATION
--------------------------------------------------------

  ALTER TABLE "BBBSI"."RECLAMATION" ADD CONSTRAINT "RECLAMATION_MATERIEL_FK1" FOREIGN KEY ("REF_MAT")
	  REFERENCES "BBBSI"."MATERIEL" ("REF_MAT") ENABLE;
 
  ALTER TABLE "BBBSI"."RECLAMATION" ADD CONSTRAINT "RECLAMATION_SERVICE_FK1" FOREIGN KEY ("REF_SERV")
	  REFERENCES "BBBSI"."SERVICE" ("REF_SERV") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table SANCTION
--------------------------------------------------------

  ALTER TABLE "BBBSI"."SANCTION" ADD CONSTRAINT "SANCTION_EMPRUNTEUR_FK1" FOREIGN KEY ("CIN_EMP")
	  REFERENCES "BBBSI"."EMPRUNTEUR" ("CIN_EMP") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SERVICE
--------------------------------------------------------

  ALTER TABLE "BBBSI"."SERVICE" ADD CONSTRAINT "SERVICE_RESPONSABLE_FK1" FOREIGN KEY ("REF_RESP")
	  REFERENCES "BBBSI"."RESPONSABLE" ("ID_RESP") ENABLE;

