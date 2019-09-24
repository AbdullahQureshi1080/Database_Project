--------------------------------------------------------
--  File created - Wednesday-May-29-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table POSITION
--------------------------------------------------------

  CREATE TABLE "FCM"."POSITION" 
   (	"POSITION_ID" VARCHAR2(20 BYTE), 
	"P_NAME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index POSITION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FCM"."POSITION_PK" ON "FCM"."POSITION" ("POSITION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table POSITION
--------------------------------------------------------

  ALTER TABLE "FCM"."POSITION" ADD CONSTRAINT "POSITION_PK" PRIMARY KEY ("POSITION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "FCM"."POSITION" MODIFY ("POSITION_ID" NOT NULL ENABLE);
