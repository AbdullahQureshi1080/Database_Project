--------------------------------------------------------
--  File created - Wednesday-May-29-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table COMPETITION
--------------------------------------------------------

  CREATE TABLE "FCM"."COMPETITION" 
   (	"COMPETITION_ID" VARCHAR2(20 BYTE), 
	"C_YEAR" NUMBER(4,0), 
	"C_NAME" VARCHAR2(30 BYTE), 
	"CURRENT_CHAMPIONS" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index COMPETITION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FCM"."COMPETITION_PK" ON "FCM"."COMPETITION" ("COMPETITION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table COMPETITION
--------------------------------------------------------

  ALTER TABLE "FCM"."COMPETITION" ADD CONSTRAINT "COMPETITION_PK" PRIMARY KEY ("COMPETITION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "FCM"."COMPETITION" MODIFY ("COMPETITION_ID" NOT NULL ENABLE);
