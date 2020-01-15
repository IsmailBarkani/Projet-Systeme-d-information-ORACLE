--------------------------------------------------------
--  File created - mercredi-janvier-15-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table AUTEUR
--------------------------------------------------------

  CREATE TABLE "AUTEUR" 
   (	"NUM_AUT" NUMBER(*,0), 
	"NOM_AUT" VARCHAR2(20), 
	"PRENOM_AUT" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table CATALOGUE
--------------------------------------------------------

  CREATE TABLE "CATALOGUE" 
   (	"REF_CLASSE" VARCHAR2(20), 
	"CODE_FRS" NUMBER(*,0), 
	"DESI_CLASSE" VARCHAR2(20), 
	"MARQUE" VARCHAR2(20), 
	"PRIX_UNTAIRE" FLOAT(126)
   ) ;
--------------------------------------------------------
--  DDL for Table COMMANDE
--------------------------------------------------------

  CREATE TABLE "COMMANDE" 
   (	"NUM_COMD" NUMBER(*,0), 
	"CODE_FRS" NUMBER(*,0), 
	"DATE_CMD" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table DEMANDE
--------------------------------------------------------

  CREATE TABLE "DEMANDE" 
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
   ) ;
--------------------------------------------------------
--  DDL for Table ECRIRE
--------------------------------------------------------

  CREATE TABLE "ECRIRE" 
   (	"NUM_AUT" NUMBER(*,0), 
	"REF_OUV" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table EMPRUNT
--------------------------------------------------------

  CREATE TABLE "EMPRUNT" 
   (	"ID_EMPRUNT" NUMBER(*,0), 
	"ID_RESP" VARCHAR2(20), 
	"REF_OUV" NUMBER(*,0), 
	"DEB_EMPRUNT" DATE, 
	"FIN_EMPRUNT" DATE, 
	"DATE_RETOUR" DATE, 
	"CIN_EMP" VARCHAR2(40), 
	"ETAT_DEMANDE" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table EMPRUNTER
--------------------------------------------------------

  CREATE TABLE "EMPRUNTER" 
   (	"REF_SERV" VARCHAR2(20), 
	"REF_MAT" VARCHAR2(20), 
	"DATE_DEB_EMPRUNT" DATE, 
	"DATE_FIN_EMPRUNT" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table EMPRUNTEUR
--------------------------------------------------------

  CREATE TABLE "EMPRUNTEUR" 
   (	"CIN_EMP" VARCHAR2(40), 
	"REF_FIL" VARCHAR2(20), 
	"NOM_EMP" VARCHAR2(20), 
	"PRENOM_EMP" VARCHAR2(20), 
	"TEL_EMP" VARCHAR2(20), 
	"GRADE_EMP" VARCHAR2(20), 
	"EMAIL_EMP" VARCHAR2(70)
   ) ;
--------------------------------------------------------
--  DDL for Table FILEIRE
--------------------------------------------------------

  CREATE TABLE "FILEIRE" 
   (	"REF_FIL" VARCHAR2(20), 
	"DESI_FIL" VARCHAR2(40)
   ) ;
--------------------------------------------------------
--  DDL for Table FOURNISSEUR
--------------------------------------------------------

  CREATE TABLE "FOURNISSEUR" 
   (	"CODE_FRS" NUMBER(*,0), 
	"NOM_FRS" VARCHAR2(20), 
	"ADDR_FRS" VARCHAR2(30), 
	"TEL_FRS" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table IMAGE
--------------------------------------------------------

  CREATE TABLE "IMAGE" 
   (	"REF_IMAGE" NUMBER(*,0), 
	"PATH" BLOB, 
	"REF_MAT" VARCHAR2(40)
   ) ;
--------------------------------------------------------
--  DDL for Table LIVRAISON
--------------------------------------------------------

  CREATE TABLE "LIVRAISON" 
   (	"NUM_LIV" NUMBER(*,0), 
	"DATE_LIV" DATE, 
	"CODE_FRS" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table MATERIEL
--------------------------------------------------------

  CREATE TABLE "MATERIEL" 
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
   ) ;
--------------------------------------------------------
--  DDL for Table OCCUPER
--------------------------------------------------------

  CREATE TABLE "OCCUPER" 
   (	"ID_RESP" VARCHAR2(20), 
	"REF_SERV" VARCHAR2(20), 
	"DATE_OCCUPATION" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table OUVRAGE
--------------------------------------------------------

  CREATE TABLE "OUVRAGE" 
   (	"REF_OUV" NUMBER(*,0), 
	"NUM_TYPE" NUMBER(*,0), 
	"TITRE" VARCHAR2(250), 
	"ISBN" VARCHAR2(20), 
	"EDITEUR_OUV" VARCHAR2(20), 
	"DATE_EDITION" DATE, 
	"AUTEUR" VARCHAR2(100), 
	"ETAT_RETOUR" VARCHAR2(40)
   ) ;
--------------------------------------------------------
--  DDL for Table RECLAMATION
--------------------------------------------------------

  CREATE TABLE "RECLAMATION" 
   (	"REF_REC" NUMBER, 
	"REF_MAT" VARCHAR2(40), 
	"REF_SERV" VARCHAR2(40), 
	"DETAILLE" VARCHAR2(255), 
	"ETAT_MAT" VARCHAR2(40), 
	"DATE_REC" VARCHAR2(40)
   ) ;
--------------------------------------------------------
--  DDL for Table RESPONSABLE
--------------------------------------------------------

  CREATE TABLE "RESPONSABLE" 
   (	"ID_RESP" VARCHAR2(40), 
	"NOM_RESP" VARCHAR2(20), 
	"PRENOM_RESP" VARCHAR2(20), 
	"EMAIL_RESP" VARCHAR2(40), 
	"TEL_RESP" VARCHAR2(20), 
	"GRADE_RESP" VARCHAR2(20), 
	"IMAGE" VARCHAR2(250), 
	"PASSWORD" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table SANCTION
--------------------------------------------------------

  CREATE TABLE "SANCTION" 
   (	"NUM_SANC" NUMBER(*,0), 
	"CIN_EMP" VARCHAR2(40), 
	"DATE_DEB" DATE, 
	"DATE_FIN" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table SERVICE
--------------------------------------------------------

  CREATE TABLE "SERVICE" 
   (	"REF_SERV" VARCHAR2(20), 
	"DESI_SERV" VARCHAR2(40), 
	"REF_RESP" VARCHAR2(40)
   ) ;
--------------------------------------------------------
--  DDL for Table TYPE
--------------------------------------------------------

  CREATE TABLE "TYPE" 
   (	"NUM_TYPE" NUMBER(*,0), 
	"TYPE_OU" VARCHAR2(20)
   ) ;

---------------------------------------------------
--   DATA FOR TABLE AUTEUR
--   FILTER = none used
---------------------------------------------------
REM INSERTING into AUTEUR
Insert into AUTEUR (NUM_AUT,NOM_AUT,PRENOM_AUT) values (1,'Marta Madero','Marta Madero');

---------------------------------------------------
--   END DATA FOR TABLE AUTEUR
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE CATALOGUE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into CATALOGUE
Insert into CATALOGUE (REF_CLASSE,CODE_FRS,DESI_CLASSE,MARQUE,PRIX_UNTAIRE) values ('CL1',1,'HP PROBOOK','HP',3800);
Insert into CATALOGUE (REF_CLASSE,CODE_FRS,DESI_CLASSE,MARQUE,PRIX_UNTAIRE) values ('CL2',1,'ASUS SIMBAL','ASUS',2700);
Insert into CATALOGUE (REF_CLASSE,CODE_FRS,DESI_CLASSE,MARQUE,PRIX_UNTAIRE) values ('CL3',1,'HP PROBOOK 640','HP',400);

---------------------------------------------------
--   END DATA FOR TABLE CATALOGUE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE COMMANDE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into COMMANDE
Insert into COMMANDE (NUM_COMD,CODE_FRS,DATE_CMD) values (1,1,to_timestamp('14/01/20 02:20:12,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into COMMANDE (NUM_COMD,CODE_FRS,DATE_CMD) values (2,1,to_timestamp('14/01/20 02:20:35,000000000','DD/MM/RR HH24:MI:SS,FF'));

---------------------------------------------------
--   END DATA FOR TABLE COMMANDE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE DEMANDE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into DEMANDE
Insert into DEMANDE (REF_DEMD,NUM_CMD,REF_CLASSE,REF_SERV,TYPE_DEMD,DATE_DEMD,ETAT_DEMD,REF_MAT,DATE_RETOUR,DESI_MAT) values ('7',1,'CL3','SR5','a',to_timestamp('14/01/20 02:15:41,000000000','DD/MM/RR HH24:MI:SS,FF'),'accepter',null,null,'HP Pro');
Insert into DEMANDE (REF_DEMD,NUM_CMD,REF_CLASSE,REF_SERV,TYPE_DEMD,DATE_DEMD,ETAT_DEMD,REF_MAT,DATE_RETOUR,DESI_MAT) values ('2',null,null,'SR5','e',to_timestamp('09/01/20 19:53:56,000000000','DD/MM/RR HH24:MI:SS,FF'),'accepter','MAT6','15/02/20','HP HORIZON mode');
Insert into DEMANDE (REF_DEMD,NUM_CMD,REF_CLASSE,REF_SERV,TYPE_DEMD,DATE_DEMD,ETAT_DEMD,REF_MAT,DATE_RETOUR,DESI_MAT) values ('4',null,null,'SR4','e',to_timestamp('07/01/20 21:42:30,000000000','DD/MM/RR HH24:MI:SS,FF'),'accepter','MAT4','01/03/20','IMPRIMANT 20X HP');
Insert into DEMANDE (REF_DEMD,NUM_CMD,REF_CLASSE,REF_SERV,TYPE_DEMD,DATE_DEMD,ETAT_DEMD,REF_MAT,DATE_RETOUR,DESI_MAT) values ('6',2,'CL2','SR3','a',to_timestamp('12/01/20 18:07:13,000000000','DD/MM/RR HH24:MI:SS,FF'),'accepter',null,null,'Asus 450');
Insert into DEMANDE (REF_DEMD,NUM_CMD,REF_CLASSE,REF_SERV,TYPE_DEMD,DATE_DEMD,ETAT_DEMD,REF_MAT,DATE_RETOUR,DESI_MAT) values ('5',null,null,'SR3','e',to_timestamp('09/01/20 21:10:10,000000000','DD/MM/RR HH24:MI:SS,FF'),'accepter','MAT7','08/03/20','BUREAU 200x150');
Insert into DEMANDE (REF_DEMD,NUM_CMD,REF_CLASSE,REF_SERV,TYPE_DEMD,DATE_DEMD,ETAT_DEMD,REF_MAT,DATE_RETOUR,DESI_MAT) values ('1',null,null,'SR5','e',to_timestamp('06/01/20 20:56:02,000000000','DD/MM/RR HH24:MI:SS,FF'),'refuser','MAT8','20/02/2020','chaise');
Insert into DEMANDE (REF_DEMD,NUM_CMD,REF_CLASSE,REF_SERV,TYPE_DEMD,DATE_DEMD,ETAT_DEMD,REF_MAT,DATE_RETOUR,DESI_MAT) values ('3',null,null,'SR5','a',to_timestamp('07/01/20 22:19:17,000000000','DD/MM/RR HH24:MI:SS,FF'),null,'MAT5',null,'DESKTOP HP');

---------------------------------------------------
--   END DATA FOR TABLE DEMANDE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE ECRIRE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ECRIRE

---------------------------------------------------
--   END DATA FOR TABLE ECRIRE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE EMPRUNT
--   FILTER = none used
---------------------------------------------------
REM INSERTING into EMPRUNT
Insert into EMPRUNT (ID_EMPRUNT,ID_RESP,REF_OUV,DEB_EMPRUNT,FIN_EMPRUNT,DATE_RETOUR,CIN_EMP,ETAT_DEMANDE) values (3,null,76,to_timestamp('11/01/20 20:16:02,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('12/01/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),null,'SX546',null);
Insert into EMPRUNT (ID_EMPRUNT,ID_RESP,REF_OUV,DEB_EMPRUNT,FIN_EMPRUNT,DATE_RETOUR,CIN_EMP,ETAT_DEMANDE) values (4,null,27,to_timestamp('11/01/20 20:16:44,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('13/01/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),null,'SR258',null);
Insert into EMPRUNT (ID_EMPRUNT,ID_RESP,REF_OUV,DEB_EMPRUNT,FIN_EMPRUNT,DATE_RETOUR,CIN_EMP,ETAT_DEMANDE) values (1,null,74,to_timestamp('11/01/20 18:47:06,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('20/01/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('11/01/20 18:47:28,000000000','DD/MM/RR HH24:MI:SS,FF'),'SX546',null);
Insert into EMPRUNT (ID_EMPRUNT,ID_RESP,REF_OUV,DEB_EMPRUNT,FIN_EMPRUNT,DATE_RETOUR,CIN_EMP,ETAT_DEMANDE) values (2,null,24,to_timestamp('11/01/20 19:13:50,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('16/01/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),null,'SX546',null);
Insert into EMPRUNT (ID_EMPRUNT,ID_RESP,REF_OUV,DEB_EMPRUNT,FIN_EMPRUNT,DATE_RETOUR,CIN_EMP,ETAT_DEMANDE) values (5,null,42,to_timestamp('12/01/20 18:29:10,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('15/01/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),null,'DFR445',null);

---------------------------------------------------
--   END DATA FOR TABLE EMPRUNT
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE EMPRUNTER
--   FILTER = none used
---------------------------------------------------
REM INSERTING into EMPRUNTER
Insert into EMPRUNTER (REF_SERV,REF_MAT,DATE_DEB_EMPRUNT,DATE_FIN_EMPRUNT) values ('SR5','MAT3',to_timestamp('01/11/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('31/01/20 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into EMPRUNTER (REF_SERV,REF_MAT,DATE_DEB_EMPRUNT,DATE_FIN_EMPRUNT) values ('SR4','MAT6',to_timestamp('01/01/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('01/01/20 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into EMPRUNTER (REF_SERV,REF_MAT,DATE_DEB_EMPRUNT,DATE_FIN_EMPRUNT) values ('SR4','MAT2',to_timestamp('22/11/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('01/02/20 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into EMPRUNTER (REF_SERV,REF_MAT,DATE_DEB_EMPRUNT,DATE_FIN_EMPRUNT) values ('SR4','MAT4',to_timestamp('10/01/20 10:33:47,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('01/03/20 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into EMPRUNTER (REF_SERV,REF_MAT,DATE_DEB_EMPRUNT,DATE_FIN_EMPRUNT) values ('SR3','MAT7',to_timestamp('09/01/20 21:12:05,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('08/03/20 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into EMPRUNTER (REF_SERV,REF_MAT,DATE_DEB_EMPRUNT,DATE_FIN_EMPRUNT) values ('SR5','MAT6',to_timestamp('09/01/20 20:54:34,000000000','DD/MM/RR HH24:MI:SS,FF'),to_timestamp('15/02/20 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'));

---------------------------------------------------
--   END DATA FOR TABLE EMPRUNTER
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE EMPRUNTEUR
--   FILTER = none used
---------------------------------------------------
REM INSERTING into EMPRUNTEUR
Insert into EMPRUNTEUR (CIN_EMP,REF_FIL,NOM_EMP,PRENOM_EMP,TEL_EMP,GRADE_EMP,EMAIL_EMP) values ('DFR445','3','Kouraj','Ismail','0685471245','étudiant','k.ismail91@gmail.com');
Insert into EMPRUNTEUR (CIN_EMP,REF_FIL,NOM_EMP,PRENOM_EMP,TEL_EMP,GRADE_EMP,EMAIL_EMP) values ('FB511','2','Sourani','Mhammed','0654785212','étudiant','m.sourani@gmail.com');
Insert into EMPRUNTEUR (CIN_EMP,REF_FIL,NOM_EMP,PRENOM_EMP,TEL_EMP,GRADE_EMP,EMAIL_EMP) values ('SX5462','5','Aakoubi','Siham','0687412354','étudiant','s.aakoubi@hotmail.com');
Insert into EMPRUNTEUR (CIN_EMP,REF_FIL,NOM_EMP,PRENOM_EMP,TEL_EMP,GRADE_EMP,EMAIL_EMP) values ('SR258','3','Sawmani','Khadija','0687451236','étudiant','s.khadija0@gmail.com');
Insert into EMPRUNTEUR (CIN_EMP,REF_FIL,NOM_EMP,PRENOM_EMP,TEL_EMP,GRADE_EMP,EMAIL_EMP) values ('RB455','1','ZOUAMBO','Yassine','0625854693','professeur','z.yassine80@live.fr');
Insert into EMPRUNTEUR (CIN_EMP,REF_FIL,NOM_EMP,PRENOM_EMP,TEL_EMP,GRADE_EMP,EMAIL_EMP) values ('SX546','4','barkani','ismail','0658741254','étudiant','ismail@gmail.com');

---------------------------------------------------
--   END DATA FOR TABLE EMPRUNTEUR
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE FILEIRE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into FILEIRE
Insert into FILEIRE (REF_FIL,DESI_FIL) values ('1','Developpement mobile');
Insert into FILEIRE (REF_FIL,DESI_FIL) values ('2','Développement web');
Insert into FILEIRE (REF_FIL,DESI_FIL) values ('3','Réseaux et sécurité informatique');
Insert into FILEIRE (REF_FIL,DESI_FIL) values ('4','Administration base de données');
Insert into FILEIRE (REF_FIL,DESI_FIL) values ('5','Bussines intelegent');

---------------------------------------------------
--   END DATA FOR TABLE FILEIRE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE FOURNISSEUR
--   FILTER = none used
---------------------------------------------------
REM INSERTING into FOURNISSEUR
Insert into FOURNISSEUR (CODE_FRS,NOM_FRS,ADDR_FRS,TEL_FRS) values (3,'SELCOMARIVA','Nador, Arouit','0536368954');
Insert into FOURNISSEUR (CODE_FRS,NOM_FRS,ADDR_FRS,TEL_FRS) values (1,'ELECTRONICA','Oujda angad','0536698741');
Insert into FOURNISSEUR (CODE_FRS,NOM_FRS,ADDR_FRS,TEL_FRS) values (2,'ELECATOM','Casablanca Ain sebaa ','0562429875');

---------------------------------------------------
--   END DATA FOR TABLE FOURNISSEUR
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE IMAGE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into IMAGE

---------------------------------------------------
--   END DATA FOR TABLE IMAGE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE LIVRAISON
--   FILTER = none used
---------------------------------------------------
REM INSERTING into LIVRAISON
Insert into LIVRAISON (NUM_LIV,DATE_LIV,CODE_FRS) values (12,to_timestamp('12/10/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),1);
Insert into LIVRAISON (NUM_LIV,DATE_LIV,CODE_FRS) values (10,to_timestamp('01/10/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),2);
Insert into LIVRAISON (NUM_LIV,DATE_LIV,CODE_FRS) values (9,to_timestamp('30/09/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),1);
Insert into LIVRAISON (NUM_LIV,DATE_LIV,CODE_FRS) values (2,to_timestamp('01/07/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),1);
Insert into LIVRAISON (NUM_LIV,DATE_LIV,CODE_FRS) values (1,to_timestamp('02/08/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),2);
Insert into LIVRAISON (NUM_LIV,DATE_LIV,CODE_FRS) values (3,to_timestamp('03/11/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),1);
Insert into LIVRAISON (NUM_LIV,DATE_LIV,CODE_FRS) values (4,to_timestamp('15/11/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),2);
Insert into LIVRAISON (NUM_LIV,DATE_LIV,CODE_FRS) values (5,to_timestamp('02/11/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),2);
Insert into LIVRAISON (NUM_LIV,DATE_LIV,CODE_FRS) values (6,to_timestamp('13/11/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),1);
Insert into LIVRAISON (NUM_LIV,DATE_LIV,CODE_FRS) values (7,to_timestamp('07/02/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),1);
Insert into LIVRAISON (NUM_LIV,DATE_LIV,CODE_FRS) values (13,to_timestamp('07/08/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),2);
Insert into LIVRAISON (NUM_LIV,DATE_LIV,CODE_FRS) values (14,to_timestamp('02/02/18 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),1);
Insert into LIVRAISON (NUM_LIV,DATE_LIV,CODE_FRS) values (15,to_timestamp('10/12/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),2);

---------------------------------------------------
--   END DATA FOR TABLE LIVRAISON
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE MATERIEL
--   FILTER = none used
---------------------------------------------------
REM INSERTING into MATERIEL
Insert into MATERIEL (REF_MAT,NUM_LIV,REF_SERV,DESI_MAT,ETAT_MAT,DATE_ACHAT,DATE_AFFECTATION,TVA,PRIXHT,IMAGE_PATH,SITUATION) values ('MAT6',1,'SR3','HP HORIZON mode','neuf',to_timestamp('01/07/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'05/01/20',0,2,1450,'C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\MAT6.jpg','a');
Insert into MATERIEL (REF_MAT,NUM_LIV,REF_SERV,DESI_MAT,ETAT_MAT,DATE_ACHAT,DATE_AFFECTATION,TVA,PRIXHT,IMAGE_PATH,SITUATION) values ('MAT7',2,'SR5','BUREAU 200x150','à reformer',to_timestamp('02/07/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'24/07/19',0,2,758,'C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\MAT7.jpg','a');
Insert into MATERIEL (REF_MAT,NUM_LIV,REF_SERV,DESI_MAT,ETAT_MAT,DATE_ACHAT,DATE_AFFECTATION,TVA,PRIXHT,IMAGE_PATH,SITUATION) values ('MAT5',1,'SR1','DESKTOP HP','neuf',to_timestamp('09/07/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),null,0,2,2000,'C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\MAT5','n');
Insert into MATERIEL (REF_MAT,NUM_LIV,REF_SERV,DESI_MAT,ETAT_MAT,DATE_ACHAT,DATE_AFFECTATION,TVA,PRIXHT,IMAGE_PATH,SITUATION) values ('MAT2',2,'SR5','SOURIS Gng 111','à reformer',to_timestamp('01/07/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'20/07/19',0,2,120,'C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\MAT2','a');
Insert into MATERIEL (REF_MAT,NUM_LIV,REF_SERV,DESI_MAT,ETAT_MAT,DATE_ACHAT,DATE_AFFECTATION,TVA,PRIXHT,IMAGE_PATH,SITUATION) values ('MAT3',2,'SR2','SOURIS','neuf',to_timestamp('01/07/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'04/01/20',0,2,130,'C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\MAT3','a');
Insert into MATERIEL (REF_MAT,NUM_LIV,REF_SERV,DESI_MAT,ETAT_MAT,DATE_ACHAT,DATE_AFFECTATION,TVA,PRIXHT,IMAGE_PATH,SITUATION) values ('MAT4',1,'SR5','IMPRIMANT 20X HP','bon état',to_timestamp('07/07/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'04/08/19',0,2,570,'C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\MAT4','a');
Insert into MATERIEL (REF_MAT,NUM_LIV,REF_SERV,DESI_MAT,ETAT_MAT,DATE_ACHAT,DATE_AFFECTATION,TVA,PRIXHT,IMAGE_PATH,SITUATION) values ('MAT8',2,'SR3','chaise','bon état',to_timestamp('07/07/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'04/01/20',0,2,50,'C:\Users\hp\Desktop\Gestion-d-un-etablissement-master\images\MAT8','a');
Insert into MATERIEL (REF_MAT,NUM_LIV,REF_SERV,DESI_MAT,ETAT_MAT,DATE_ACHAT,DATE_AFFECTATION,TVA,PRIXHT,IMAGE_PATH,SITUATION) values ('MAT1',9,'SR1','Desktop HP X25','neuf',to_timestamp('20/09/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),null,0,2,1200,'C:\Users\hp\Desktop\MAT1.jpg','n');

---------------------------------------------------
--   END DATA FOR TABLE MATERIEL
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE OCCUPER
--   FILTER = none used
---------------------------------------------------
REM INSERTING into OCCUPER
Insert into OCCUPER (ID_RESP,REF_SERV,DATE_OCCUPATION) values ('EMP4','SR5',to_timestamp('05/09/15 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into OCCUPER (ID_RESP,REF_SERV,DATE_OCCUPATION) values ('EMP6','SR4',to_timestamp('09/11/11 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into OCCUPER (ID_RESP,REF_SERV,DATE_OCCUPATION) values ('EMP7','SR6',to_timestamp('25/08/16 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into OCCUPER (ID_RESP,REF_SERV,DATE_OCCUPATION) values ('EMP10','SR3',to_timestamp('31/12/10 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into OCCUPER (ID_RESP,REF_SERV,DATE_OCCUPATION) values ('EMP0','SR2',to_timestamp('06/01/09 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into OCCUPER (ID_RESP,REF_SERV,DATE_OCCUPATION) values ('EMP1','SR1',to_timestamp('05/05/06 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into OCCUPER (ID_RESP,REF_SERV,DATE_OCCUPATION) values ('EMP9','SR11',to_timestamp('03/01/20 15:02:28,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into OCCUPER (ID_RESP,REF_SERV,DATE_OCCUPATION) values ('EMP2','SR7',to_timestamp('03/01/20 14:05:20,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into OCCUPER (ID_RESP,REF_SERV,DATE_OCCUPATION) values ('EMP3','SR8',to_timestamp('03/01/20 14:14:46,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into OCCUPER (ID_RESP,REF_SERV,DATE_OCCUPATION) values ('EMP8','SR10',to_timestamp('03/01/20 14:42:20,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into OCCUPER (ID_RESP,REF_SERV,DATE_OCCUPATION) values ('EMP11','SR11',to_timestamp('03/01/20 18:28:58,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into OCCUPER (ID_RESP,REF_SERV,DATE_OCCUPATION) values ('EMP5','SR9',to_timestamp('03/01/20 14:34:12,000000000','DD/MM/RR HH24:MI:SS,FF'));
Insert into OCCUPER (ID_RESP,REF_SERV,DATE_OCCUPATION) values ('EMP12','SR11',to_timestamp('03/01/20 18:02:00,000000000','DD/MM/RR HH24:MI:SS,FF'));

---------------------------------------------------
--   END DATA FOR TABLE OCCUPER
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE OUVRAGE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into OUVRAGE
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (1,1,'les réseaux de mobile','BIF2001','DUNOD',to_timestamp('10/02/07 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'André Préze','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (2,1,'programmation en C++','BIF3010','EYROLLS',to_timestamp('07/08/02 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'George Chansaan','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (3,1,'LINUX','BIF2541','DUNOD',to_timestamp('21/11/10 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Segoere Northman','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (4,1,'ERP ET PROGICIELS','BIF1010','MICROSOFT',to_timestamp('14/02/04 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Youssef Kariim','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (5,1,'DATA MINING','BIF445','EYROLLS',to_timestamp('10/03/12 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Same Kathrin','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (6,1,'les réseaux de mobile','BIF2001','DUNOD',to_timestamp('10/02/07 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'André Préze','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (7,1,'les réseaux de mobile','BIF2001','DUNOD',to_timestamp('10/02/07 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'André Préze','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (8,1,'les réseaux de mobile','BIF2001','DUNOD',to_timestamp('10/02/07 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'André Préze','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (9,1,'les réseaux de mobile','BIF2001','DUNOD',to_timestamp('10/02/07 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'André Préze','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (10,1,'les réseaux de mobile','BIF2001','DUNOD',to_timestamp('10/02/07 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'André Préze','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (11,1,'les réseaux de mobile','BIF2001','DUNOD',to_timestamp('10/02/07 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'André Préze','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (12,1,'les réseaux de mobile','BIF2001','DUNOD',to_timestamp('10/02/07 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'André Préze','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (13,1,'les réseaux de mobile','BIF2001','DUNOD',to_timestamp('10/02/07 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'André Préze','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (14,1,'les réseaux de mobile','BIF2001','DUNOD',to_timestamp('10/02/07 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'André Préze','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (15,1,'les réseaux de mobile','BIF2001','DUNOD',to_timestamp('10/02/07 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'André Préze','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (16,1,'DATA MINING','BIF445','EYROLLS',to_timestamp('10/03/12 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Same Kathrin','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (17,1,'DATA MINING','BIF445','EYROLLS',to_timestamp('10/03/12 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Same Kathrin','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (18,1,'DATA MINING','BIF445','EYROLLS',to_timestamp('10/03/12 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Same Kathrin','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (19,1,'DATA MINING','BIF445','EYROLLS',to_timestamp('10/03/12 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Same Kathrin','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (20,1,'DATA MINING','BIF445','EYROLLS',to_timestamp('10/03/12 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Same Kathrin','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (21,1,'DATA MINING','BIF445','EYROLLS',to_timestamp('10/03/12 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Same Kathrin','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (22,1,'DATA MINING','BIF445','EYROLLS',to_timestamp('10/03/12 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Same Kathrin','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (24,1,'DATA MINING','BIF445','EYROLLS',to_timestamp('10/03/12 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Same Kathrin','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (25,1,'programmation en C++','BIF3010','EYROLLS',to_timestamp('07/08/02 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'George Chansaan','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (26,1,'programmation en C++','BIF3010','EYROLLS',to_timestamp('07/08/02 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'George Chansaan','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (27,1,'programmation en C++','BIF3010','EYROLLS',to_timestamp('07/08/02 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'George Chansaan','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (28,1,'programmation en C++','BIF3010','EYROLLS',to_timestamp('07/08/02 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'George Chansaan','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (29,1,'LINUX','BIF2541','DUNOD',to_timestamp('21/11/10 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Segoere Northman','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (30,1,'LINUX','BIF2541','DUNOD',to_timestamp('21/11/10 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Segoere Northman','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (31,1,'LINUX','BIF2541','DUNOD',to_timestamp('21/11/10 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Segoere Northman','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (32,1,'LINUX','BIF2541','DUNOD',to_timestamp('21/11/10 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Segoere Northman','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (38,4,'La loi de la chair. Le droit au corps du conjoint dans l''oeuvre des canonistes (XIIe-XVe siècle)','BIF2860','SORBONNE ',to_timestamp('20/11/15 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Marta Madero','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (39,4,'La loi de la chair. Le droit au corps du conjoint dans l''oeuvre des canonistes (XIIe-XVe siècle)','BIF2860','SORBONNE ',to_timestamp('20/11/15 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Marta Madero','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (40,4,'La loi de la chair. Le droit au corps du conjoint dans l''oeuvre des canonistes (XIIe-XVe siècle)','BIF2860','SORBONNE ',to_timestamp('20/11/15 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Marta Madero','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (41,4,'La loi de la chair. Le droit au corps du conjoint dans l''oeuvre des canonistes (XIIe-XVe siècle)','BIF2860','SORBONNE ',to_timestamp('20/11/15 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Marta Madero','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (42,4,'La loi de la chair. Le droit au corps du conjoint dans l''oeuvre des canonistes (XIIe-XVe siècle)','BIF2860','SORBONNE ',to_timestamp('20/11/15 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Marta Madero','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (43,5,'La ville, le gouvernement et l''écrit à Montpellier (XIIe-XIVe siècle) : Essai d''histoire sociale','BIF2755','SORBONNE',to_timestamp('29/08/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Pierre Chastang','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (44,5,'La ville, le gouvernement et l''écrit à Montpellier (XIIe-XIVe siècle) : Essai d''histoire sociale','BIF2755','SORBONNE',to_timestamp('29/08/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Pierre Chastang','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (45,5,'La ville, le gouvernement et l''écrit à Montpellier (XIIe-XIVe siècle) : Essai d''histoire sociale','BIF2755','SORBONNE',to_timestamp('29/08/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Pierre Chastang','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (46,5,'La ville, le gouvernement et l''écrit à Montpellier (XIIe-XIVe siècle) : Essai d''histoire sociale','BIF2755','SORBONNE',to_timestamp('29/08/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Pierre Chastang','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (47,5,'La ville, le gouvernement et l''écrit à Montpellier (XIIe-XIVe siècle) : Essai d''histoire sociale','BIF2755','SORBONNE',to_timestamp('29/08/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Pierre Chastang','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (48,5,'La ville, le gouvernement et l''écrit à Montpellier (XIIe-XIVe siècle) : Essai d''histoire sociale','BIF2755','SORBONNE',to_timestamp('29/08/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Pierre Chastang','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (49,5,'La ville, le gouvernement et l''écrit à Montpellier (XIIe-XIVe siècle) : Essai d''histoire sociale','BIF2755','SORBONNE',to_timestamp('29/08/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Pierre Chastang','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (50,5,'Les Cris de Paris ou le peuple travesti : les représentations des petits métiers','BIF3333','SORBONNE',to_timestamp('04/08/95 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Vincent Milliot','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (51,5,'Les Cris de Paris ou le peuple travesti : les représentations des petits métiers','BIF3333','SORBONNE',to_timestamp('04/08/95 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Vincent Milliot','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (52,5,'Les Cris de Paris ou le peuple travesti : les représentations des petits métiers','BIF3333','SORBONNE',to_timestamp('04/08/95 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Vincent Milliot','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (53,5,'Les Cris de Paris ou le peuple travesti : les représentations des petits métiers','BIF3333','SORBONNE',to_timestamp('04/08/95 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Vincent Milliot','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (54,5,'Les Cris de Paris ou le peuple travesti : les représentations des petits métiers','BIF3333','SORBONNE',to_timestamp('04/08/95 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Vincent Milliot','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (55,5,'Les Cris de Paris ou le peuple travesti : les représentations des petits métiers','BIF3333','SORBONNE',to_timestamp('04/08/95 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Vincent Milliot','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (56,3,'Le cours de physique de Feynman - Electromagnétisme','BIF1212','Dunod',to_timestamp('01/11/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Richard Feynman','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (57,3,'Le cours de physique de Feynman - Electromagnétisme','BIF1212','Dunod',to_timestamp('01/11/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Richard Feynman','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (58,3,'Le cours de physique de Feynman - Electromagnétisme','BIF1212','Dunod',to_timestamp('01/11/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Richard Feynman','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (59,3,'Le cours de physique de Feynman - Electromagnétisme','BIF1212','Dunod',to_timestamp('01/11/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Richard Feynman','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (60,3,'Le cours de physique de Feynman - Electromagnétisme','BIF1212','Dunod',to_timestamp('01/11/19 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Richard Feynman','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (73,5,'Le dernier mort de Mitterand','BIF222','GRASSET',to_timestamp('05/05/10 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Raphaelle bacqué','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (74,5,'Le dernier mort de Mitterand','BIF222','GRASSET',to_timestamp('05/05/10 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Raphaelle bacqué','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (75,5,'Le dernier mort de Mitterand','BIF222','GRASSET',to_timestamp('05/05/10 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Raphaelle bacqué','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (76,5,'Le dernier mort de Mitterand','BIF222','GRASSET',to_timestamp('05/05/10 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Raphaelle bacqué','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (72,5,'Le dernier mort de Mitterand','BIF222','GRASSET',to_timestamp('05/05/10 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Raphaelle bacqué','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (61,4,'Spinoza : La raison à l''épreuve de la pratique','BIF2859','SORBONNE',to_timestamp('14/03/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Juan Vicente Cortés','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (62,4,'Spinoza : La raison à l''épreuve de la pratique','BIF2859','SORBONNE',to_timestamp('14/03/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Juan Vicente Cortés','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (63,4,'Spinoza : La raison à l''épreuve de la pratique','BIF2859','SORBONNE',to_timestamp('14/03/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Juan Vicente Cortés','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (64,4,'Spinoza : La raison à l''épreuve de la pratique','BIF2859','SORBONNE',to_timestamp('14/03/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Juan Vicente Cortés','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (65,4,'Spinoza : La raison à l''épreuve de la pratique','BIF2859','SORBONNE',to_timestamp('14/03/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Juan Vicente Cortés','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (66,4,'Spinoza : La raison à l''épreuve de la pratique','BIF2859','SORBONNE',to_timestamp('14/03/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Juan Vicente Cortés','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (67,4,'Spinoza : La raison à l''épreuve de la pratique','BIF2859','SORBONNE',to_timestamp('14/03/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Juan Vicente Cortés','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (68,4,'Spinoza : La raison à l''épreuve de la pratique','BIF2859','SORBONNE',to_timestamp('14/03/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Juan Vicente Cortés','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (69,4,'Spinoza : La raison à l''épreuve de la pratique','BIF2859','SORBONNE',to_timestamp('14/03/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Juan Vicente Cortés','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (70,4,'Spinoza : La raison à l''épreuve de la pratique','BIF2859','SORBONNE',to_timestamp('14/03/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Juan Vicente Cortés','mauvaise état');
Insert into OUVRAGE (REF_OUV,NUM_TYPE,TITRE,ISBN,EDITEUR_OUV,DATE_EDITION,AUTEUR,ETAT_RETOUR) values (71,4,'Spinoza : La raison à l''épreuve de la pratique','BIF2859','SORBONNE',to_timestamp('14/03/13 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'Juan Vicente Cortés','mauvaise état');

---------------------------------------------------
--   END DATA FOR TABLE OUVRAGE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE RECLAMATION
--   FILTER = none used
---------------------------------------------------
REM INSERTING into RECLAMATION
Insert into RECLAMATION (REF_REC,REF_MAT,REF_SERV,DETAILLE,ETAT_MAT,DATE_REC) values (1,'MAT7','SR5','Un probléme au niveau de ...','à reformer','08/01/20');
Insert into RECLAMATION (REF_REC,REF_MAT,REF_SERV,DETAILLE,ETAT_MAT,DATE_REC) values (2,'MAT4','SR5','bon état mais avec quelques changements','bon état','08/01/20');

---------------------------------------------------
--   END DATA FOR TABLE RECLAMATION
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE RESPONSABLE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into RESPONSABLE
Insert into RESPONSABLE (ID_RESP,NOM_RESP,PRENOM_RESP,EMAIL_RESP,TEL_RESP,GRADE_RESP,IMAGE,PASSWORD) values ('EMP4','SAOUIN','JABRAN','j','0682114725','PES',null,'abcdd');
Insert into RESPONSABLE (ID_RESP,NOM_RESP,PRENOM_RESP,EMAIL_RESP,TEL_RESP,GRADE_RESP,IMAGE,PASSWORD) values ('EMP0','BAKOURI','SIHAM','bakourisiham@gmail.com','0652114695','PES',null,'abcd');
Insert into RESPONSABLE (ID_RESP,NOM_RESP,PRENOM_RESP,EMAIL_RESP,TEL_RESP,GRADE_RESP,IMAGE,PASSWORD) values ('EMP10','BENALIA','KAMAL','b','0654871235','PES',null,'abcd');
Insert into RESPONSABLE (ID_RESP,NOM_RESP,PRENOM_RESP,EMAIL_RESP,TEL_RESP,GRADE_RESP,IMAGE,PASSWORD) values ('EMP6','CHAILAT','DOUNIA','dounia@gmail.com','0658765812','PES',null,'abcd');
Insert into RESPONSABLE (ID_RESP,NOM_RESP,PRENOM_RESP,EMAIL_RESP,TEL_RESP,GRADE_RESP,IMAGE,PASSWORD) values ('EMP1','ADARRAF','ISMAIL','a.ismail@gmail.com','0638314588','PES',null,'abcd');
Insert into RESPONSABLE (ID_RESP,NOM_RESP,PRENOM_RESP,EMAIL_RESP,TEL_RESP,GRADE_RESP,IMAGE,PASSWORD) values ('EMP7','AMOUH','HOUSSAM','houssam22@gmail.com','0652478406','PES',null,'abcd');
Insert into RESPONSABLE (ID_RESP,NOM_RESP,PRENOM_RESP,EMAIL_RESP,TEL_RESP,GRADE_RESP,IMAGE,PASSWORD) values ('EMP9','Naou','Naouale','na.naouale@gmail.com','0654789632','MA',null,'abcd');
Insert into RESPONSABLE (ID_RESP,NOM_RESP,PRENOM_RESP,EMAIL_RESP,TEL_RESP,GRADE_RESP,IMAGE,PASSWORD) values ('EMP2','Bouzahra','Abelillah','A.bouzahra@gmail.com','0655847122','PES',null,'abcd');
Insert into RESPONSABLE (ID_RESP,NOM_RESP,PRENOM_RESP,EMAIL_RESP,TEL_RESP,GRADE_RESP,IMAGE,PASSWORD) values ('EMP3','Somari','Khalid','Kh.soumari1@gmail.com','0688471252','PH',null,'abcd');
Insert into RESPONSABLE (ID_RESP,NOM_RESP,PRENOM_RESP,EMAIL_RESP,TEL_RESP,GRADE_RESP,IMAGE,PASSWORD) values ('EMP8','Siouart','Hassan','S.hassouart@gmail.com','0652874169','PAg',null,'abcd');
Insert into RESPONSABLE (ID_RESP,NOM_RESP,PRENOM_RESP,EMAIL_RESP,TEL_RESP,GRADE_RESP,IMAGE,PASSWORD) values ('EMP11','HAKIM','Mohamed','hakimhakim@gmail.com','0685471245','PH',null,'abcd');
Insert into RESPONSABLE (ID_RESP,NOM_RESP,PRENOM_RESP,EMAIL_RESP,TEL_RESP,GRADE_RESP,IMAGE,PASSWORD) values ('EMP12','SOUAD','SALAM','s.salam23@hotmail.fr','0698541236','PES',null,'abcd');
Insert into RESPONSABLE (ID_RESP,NOM_RESP,PRENOM_RESP,EMAIL_RESP,TEL_RESP,GRADE_RESP,IMAGE,PASSWORD) values ('EMP5','Moussati','Oussama','o.moussati@homtail.fr','0647125487','PH',null,'abcd');

---------------------------------------------------
--   END DATA FOR TABLE RESPONSABLE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE SANCTION
--   FILTER = none used
---------------------------------------------------
REM INSERTING into SANCTION

---------------------------------------------------
--   END DATA FOR TABLE SANCTION
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE SERVICE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into SERVICE
Insert into SERVICE (REF_SERV,DESI_SERV,REF_RESP) values ('SR1','Direction','EMP1');
Insert into SERVICE (REF_SERV,DESI_SERV,REF_RESP) values ('SR2','Mathématique appliqué','EMP0');
Insert into SERVICE (REF_SERV,DESI_SERV,REF_RESP) values ('SR3','Bibliothéque','EMP10');
Insert into SERVICE (REF_SERV,DESI_SERV,REF_RESP) values ('SR4','Réseaux & sécurité informatique','EMP6');
Insert into SERVICE (REF_SERV,DESI_SERV,REF_RESP) values ('SR5','Génie logiciel','EMP4');
Insert into SERVICE (REF_SERV,DESI_SERV,REF_RESP) values ('SR6','Informatique décisionnelle','EMP7');
Insert into SERVICE (REF_SERV,DESI_SERV,REF_RESP) values ('SR7','Développement Mobile','EMP2');
Insert into SERVICE (REF_SERV,DESI_SERV,REF_RESP) values ('SR8','Innovation','EMP3');
Insert into SERVICE (REF_SERV,DESI_SERV,REF_RESP) values ('SR10','Informatique Industrielle','EMP8');
Insert into SERVICE (REF_SERV,DESI_SERV,REF_RESP) values ('SR9','Maching learning','EMP5');

---------------------------------------------------
--   END DATA FOR TABLE SERVICE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE TYPE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into TYPE
Insert into TYPE (NUM_TYPE,TYPE_OU) values (1,'informatique');
Insert into TYPE (NUM_TYPE,TYPE_OU) values (2,'mathematique');
Insert into TYPE (NUM_TYPE,TYPE_OU) values (3,'physique');
Insert into TYPE (NUM_TYPE,TYPE_OU) values (4,'Logique');
Insert into TYPE (NUM_TYPE,TYPE_OU) values (5,'Politique');

---------------------------------------------------
--   END DATA FOR TABLE TYPE
---------------------------------------------------

--------------------------------------------------------
--  Constraints for Table RECLAMATION
--------------------------------------------------------

  ALTER TABLE "RECLAMATION" ADD CONSTRAINT "RECLAMATION_PK" PRIMARY KEY ("REF_REC") ENABLE;
 
  ALTER TABLE "RECLAMATION" MODIFY ("REF_REC" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LIVRAISON
--------------------------------------------------------

  ALTER TABLE "LIVRAISON" MODIFY ("CODE_FRS" NOT NULL ENABLE);
 
  ALTER TABLE "LIVRAISON" ADD PRIMARY KEY ("NUM_LIV") ENABLE;
--------------------------------------------------------
--  Constraints for Table SERVICE
--------------------------------------------------------

  ALTER TABLE "SERVICE" ADD PRIMARY KEY ("REF_SERV") ENABLE;
--------------------------------------------------------
--  Constraints for Table ECRIRE
--------------------------------------------------------

  ALTER TABLE "ECRIRE" ADD CONSTRAINT "PK_ECRIRE" PRIMARY KEY ("NUM_AUT", "REF_OUV") ENABLE;
--------------------------------------------------------
--  Constraints for Table EMPRUNTEUR
--------------------------------------------------------

  ALTER TABLE "EMPRUNTEUR" ADD PRIMARY KEY ("CIN_EMP") ENABLE;
 
  ALTER TABLE "EMPRUNTEUR" MODIFY ("REF_FIL" NOT NULL ENABLE);
 
  ALTER TABLE "EMPRUNTEUR" MODIFY ("PRENOM_EMP" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table IMAGE
--------------------------------------------------------

  ALTER TABLE "IMAGE" ADD PRIMARY KEY ("REF_IMAGE") ENABLE;
--------------------------------------------------------
--  Constraints for Table OUVRAGE
--------------------------------------------------------

  ALTER TABLE "OUVRAGE" ADD PRIMARY KEY ("REF_OUV") ENABLE;
--------------------------------------------------------
--  Constraints for Table RESPONSABLE
--------------------------------------------------------

  ALTER TABLE "RESPONSABLE" ADD PRIMARY KEY ("ID_RESP") ENABLE;
--------------------------------------------------------
--  Constraints for Table OCCUPER
--------------------------------------------------------

  ALTER TABLE "OCCUPER" ADD CONSTRAINT "PK_OCCUPER" PRIMARY KEY ("ID_RESP", "REF_SERV") ENABLE;
 
  ALTER TABLE "OCCUPER" MODIFY ("ID_RESP" NOT NULL ENABLE);
 
  ALTER TABLE "OCCUPER" MODIFY ("REF_SERV" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SANCTION
--------------------------------------------------------

  ALTER TABLE "SANCTION" ADD PRIMARY KEY ("NUM_SANC") ENABLE;
--------------------------------------------------------
--  Constraints for Table CATALOGUE
--------------------------------------------------------

  ALTER TABLE "CATALOGUE" MODIFY ("CODE_FRS" NOT NULL ENABLE);
 
  ALTER TABLE "CATALOGUE" ADD PRIMARY KEY ("REF_CLASSE") ENABLE;
--------------------------------------------------------
--  Constraints for Table AUTEUR
--------------------------------------------------------

  ALTER TABLE "AUTEUR" ADD PRIMARY KEY ("NUM_AUT") ENABLE;
--------------------------------------------------------
--  Constraints for Table EMPRUNTER
--------------------------------------------------------

  ALTER TABLE "EMPRUNTER" ADD CONSTRAINT "PK_EMPRUNTER" PRIMARY KEY ("REF_SERV", "REF_MAT") ENABLE;
 
  ALTER TABLE "EMPRUNTER" MODIFY ("REF_MAT" NOT NULL ENABLE);
 
  ALTER TABLE "EMPRUNTER" MODIFY ("REF_SERV" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPRUNT
--------------------------------------------------------

  ALTER TABLE "EMPRUNT" ADD PRIMARY KEY ("ID_EMPRUNT") ENABLE;
--------------------------------------------------------
--  Constraints for Table FOURNISSEUR
--------------------------------------------------------

  ALTER TABLE "FOURNISSEUR" ADD PRIMARY KEY ("CODE_FRS") ENABLE;
--------------------------------------------------------
--  Constraints for Table COMMANDE
--------------------------------------------------------

  ALTER TABLE "COMMANDE" MODIFY ("CODE_FRS" NOT NULL ENABLE);
 
  ALTER TABLE "COMMANDE" ADD PRIMARY KEY ("NUM_COMD") ENABLE;
--------------------------------------------------------
--  Constraints for Table DEMANDE
--------------------------------------------------------

  ALTER TABLE "DEMANDE" ADD PRIMARY KEY ("REF_DEMD") ENABLE;
--------------------------------------------------------
--  Constraints for Table FILEIRE
--------------------------------------------------------

  ALTER TABLE "FILEIRE" ADD PRIMARY KEY ("REF_FIL") ENABLE;
--------------------------------------------------------
--  Constraints for Table TYPE
--------------------------------------------------------

  ALTER TABLE "TYPE" ADD PRIMARY KEY ("NUM_TYPE") ENABLE;
--------------------------------------------------------
--  Constraints for Table MATERIEL
--------------------------------------------------------

  ALTER TABLE "MATERIEL" MODIFY ("NUM_LIV" NOT NULL ENABLE);
 
  ALTER TABLE "MATERIEL" MODIFY ("REF_SERV" NOT NULL ENABLE);
 
  ALTER TABLE "MATERIEL" ADD PRIMARY KEY ("REF_MAT") ENABLE;
--------------------------------------------------------
--  DDL for Index PK_ECRIRE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ECRIRE" ON "ECRIRE" ("NUM_AUT", "REF_OUV") 
  ;
--------------------------------------------------------
--  DDL for Index RECLAMATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RECLAMATION_PK" ON "RECLAMATION" ("REF_REC") 
  ;
--------------------------------------------------------
--  DDL for Index PK_EMPRUNTER
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EMPRUNTER" ON "EMPRUNTER" ("REF_SERV", "REF_MAT") 
  ;
--------------------------------------------------------
--  DDL for Index PK_OCCUPER
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_OCCUPER" ON "OCCUPER" ("ID_RESP", "REF_SERV") 
  ;

--------------------------------------------------------
--  Ref Constraints for Table CATALOGUE
--------------------------------------------------------

  ALTER TABLE "CATALOGUE" ADD CONSTRAINT "CODE_FRS_FRGN_CAT" FOREIGN KEY ("CODE_FRS")
	  REFERENCES "FOURNISSEUR" ("CODE_FRS") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMANDE
--------------------------------------------------------

  ALTER TABLE "COMMANDE" ADD CONSTRAINT "CODE_FRS_FRGN_CMD" FOREIGN KEY ("CODE_FRS")
	  REFERENCES "FOURNISSEUR" ("CODE_FRS") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DEMANDE
--------------------------------------------------------

  ALTER TABLE "DEMANDE" ADD CONSTRAINT "NUM_CMD_FRGN" FOREIGN KEY ("NUM_CMD")
	  REFERENCES "COMMANDE" ("NUM_COMD") ENABLE;
 
  ALTER TABLE "DEMANDE" ADD CONSTRAINT "REF_CLASSE_FRGN" FOREIGN KEY ("REF_CLASSE")
	  REFERENCES "CATALOGUE" ("REF_CLASSE") ENABLE;
 
  ALTER TABLE "DEMANDE" ADD CONSTRAINT "REF_SERV_FRGN_DEMD" FOREIGN KEY ("REF_MAT")
	  REFERENCES "MATERIEL" ("REF_MAT") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table EMPRUNT
--------------------------------------------------------

  ALTER TABLE "EMPRUNT" ADD CONSTRAINT "EMPRUNT_EMPRUNTEUR_FK1" FOREIGN KEY ("CIN_EMP")
	  REFERENCES "EMPRUNTEUR" ("CIN_EMP") ENABLE;
 
  ALTER TABLE "EMPRUNT" ADD CONSTRAINT "ID_RESP_FRGN" FOREIGN KEY ("ID_RESP")
	  REFERENCES "RESPONSABLE" ("ID_RESP") ENABLE;
 
  ALTER TABLE "EMPRUNT" ADD CONSTRAINT "REF_OUV_FRGN" FOREIGN KEY ("REF_OUV")
	  REFERENCES "OUVRAGE" ("REF_OUV") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPRUNTER
--------------------------------------------------------

  ALTER TABLE "EMPRUNTER" ADD CONSTRAINT "REFG_MAT" FOREIGN KEY ("REF_MAT")
	  REFERENCES "MATERIEL" ("REF_MAT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPRUNTEUR
--------------------------------------------------------

  ALTER TABLE "EMPRUNTEUR" ADD CONSTRAINT "REF_FIL_FRGN" FOREIGN KEY ("REF_FIL")
	  REFERENCES "FILEIRE" ("REF_FIL") ENABLE;


--------------------------------------------------------
--  Ref Constraints for Table IMAGE
--------------------------------------------------------

  ALTER TABLE "IMAGE" ADD CONSTRAINT "REF_MAT_FRGN" FOREIGN KEY ("REF_MAT")
	  REFERENCES "MATERIEL" ("REF_MAT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LIVRAISON
--------------------------------------------------------

  ALTER TABLE "LIVRAISON" ADD CONSTRAINT "CODE_FRS_FRGN" FOREIGN KEY ("CODE_FRS")
	  REFERENCES "FOURNISSEUR" ("CODE_FRS") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MATERIEL
--------------------------------------------------------

  ALTER TABLE "MATERIEL" ADD CONSTRAINT "NUM_LIV_FRGN" FOREIGN KEY ("NUM_LIV")
	  REFERENCES "LIVRAISON" ("NUM_LIV") ENABLE;
 
  ALTER TABLE "MATERIEL" ADD CONSTRAINT "REF_SERV_FRGN" FOREIGN KEY ("REF_SERV")
	  REFERENCES "SERVICE" ("REF_SERV") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table OUVRAGE
--------------------------------------------------------

  ALTER TABLE "OUVRAGE" ADD CONSTRAINT "NUM_TYPE_FRGN" FOREIGN KEY ("NUM_TYPE")
	  REFERENCES "TYPE" ("NUM_TYPE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RECLAMATION
--------------------------------------------------------

  ALTER TABLE "RECLAMATION" ADD CONSTRAINT "RECLAMATION_MATERIEL_FK1" FOREIGN KEY ("REF_MAT")
	  REFERENCES "MATERIEL" ("REF_MAT") ENABLE;
 
  ALTER TABLE "RECLAMATION" ADD CONSTRAINT "RECLAMATION_SERVICE_FK1" FOREIGN KEY ("REF_SERV")
	  REFERENCES "SERVICE" ("REF_SERV") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table SANCTION
--------------------------------------------------------

  ALTER TABLE "SANCTION" ADD CONSTRAINT "SANCTION_EMPRUNTEUR_FK1" FOREIGN KEY ("CIN_EMP")
	  REFERENCES "EMPRUNTEUR" ("CIN_EMP") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SERVICE
--------------------------------------------------------

  ALTER TABLE "SERVICE" ADD CONSTRAINT "SERVICE_RESPONSABLE_FK1" FOREIGN KEY ("REF_RESP")
	  REFERENCES "RESPONSABLE" ("ID_RESP") ENABLE;

