--------------------------------------------------------
--  File created - Wednesday-May-29-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TRAINING
--------------------------------------------------------

  CREATE TABLE "FCM"."TRAINING" 
   (	"TRAINING_ID" VARCHAR2(20 BYTE), 
	"T_NAME" VARCHAR2(20 BYTE), 
	"NO_OF_DRILLS" NUMBER, 
	"DURATION" VARCHAR2(20 BYTE), 
	"TYPE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TRAINING_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FCM"."TRAINING_PK" ON "FCM"."TRAINING" ("TRAINING_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table TRAINING
--------------------------------------------------------

  ALTER TABLE "FCM"."TRAINING" MODIFY ("TRAINING_ID" NOT NULL ENABLE);
 
  ALTER TABLE "FCM"."TRAINING" ADD CONSTRAINT "TRAINING_PK" PRIMARY KEY ("TRAINING_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
