--------------------------------------------------------
--  File created - Wednesday-May-29-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MANAGER
--------------------------------------------------------

  CREATE TABLE "FCM"."MANAGER" 
   (	"MANAGER_ID" VARCHAR2(20 BYTE), 
	"M_NAME" VARCHAR2(30 BYTE), 
	"M_AGE" NUMBER(2,0), 
	"M_NATIONALITY" VARCHAR2(20 BYTE), 
	"CONTRACT_ID" VARCHAR2(20 BYTE), 
	"CONTACT" NUMBER(15,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MANAGER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FCM"."MANAGER_PK" ON "FCM"."MANAGER" ("MANAGER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table MANAGER
--------------------------------------------------------

  ALTER TABLE "FCM"."MANAGER" ADD CONSTRAINT "MANAGER_PK" PRIMARY KEY ("MANAGER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "FCM"."MANAGER" MODIFY ("MANAGER_ID" NOT NULL ENABLE);
