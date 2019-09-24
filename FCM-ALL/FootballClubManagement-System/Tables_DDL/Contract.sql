--------------------------------------------------------
--  File created - Wednesday-May-29-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CONTRACT
--------------------------------------------------------

  CREATE TABLE "FCM"."CONTRACT" 
   (	"CONTRACT_ID" VARCHAR2(20 BYTE), 
	"SALARY" VARCHAR2(20 BYTE), 
	"RELEASE_CLAUSE" VARCHAR2(20 BYTE), 
	"LENGHT" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CONTRACT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FCM"."CONTRACT_PK" ON "FCM"."CONTRACT" ("CONTRACT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table CONTRACT
--------------------------------------------------------

  ALTER TABLE "FCM"."CONTRACT" ADD CONSTRAINT "CONTRACT_PK" PRIMARY KEY ("CONTRACT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "FCM"."CONTRACT" MODIFY ("CONTRACT_ID" NOT NULL ENABLE);
