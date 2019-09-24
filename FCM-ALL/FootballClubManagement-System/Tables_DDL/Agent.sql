--------------------------------------------------------
--  File created - Wednesday-May-29-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table AGENT
--------------------------------------------------------

  CREATE TABLE "FCM"."AGENT" 
   (	"AGENT_ID" VARCHAR2(20 BYTE), 
	"A_NAME" VARCHAR2(30 BYTE), 
	"A_AGE" NUMBER(2,0), 
	"A_NATIONALITY" VARCHAR2(30 BYTE), 
	"A_CONTACT" NUMBER(15,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index AGENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FCM"."AGENT_PK" ON "FCM"."AGENT" ("AGENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table AGENT
--------------------------------------------------------

  ALTER TABLE "FCM"."AGENT" ADD CONSTRAINT "AGENT_PK" PRIMARY KEY ("AGENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "FCM"."AGENT" MODIFY ("AGENT_ID" NOT NULL ENABLE);
