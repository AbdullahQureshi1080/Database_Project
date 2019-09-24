--------------------------------------------------------
--  File created - Wednesday-May-29-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table LEAGUE
--------------------------------------------------------

  CREATE TABLE "FCM"."LEAGUE" 
   (	"LEAGUE_ID" VARCHAR2(20 BYTE), 
	"L_YEAR" NUMBER(4,0), 
	"L_NAME" VARCHAR2(35 BYTE), 
	"CURRENT_CHAMPIONS" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LEAGUE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FCM"."LEAGUE_PK" ON "FCM"."LEAGUE" ("LEAGUE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table LEAGUE
--------------------------------------------------------

  ALTER TABLE "FCM"."LEAGUE" ADD CONSTRAINT "LEAGUE_PK" PRIMARY KEY ("LEAGUE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "FCM"."LEAGUE" MODIFY ("LEAGUE_ID" NOT NULL ENABLE);
