--------------------------------------------------------
--  File created - Wednesday-May-29-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PLAYER_RECORD
--------------------------------------------------------

  CREATE TABLE "FCM"."PLAYER_RECORD" 
   (	"PLAYER_ID" VARCHAR2(20 BYTE), 
	"P_TOTAL_GAMES" NUMBER, 
	"P_WINS" NUMBER, 
	"P_LOSES" NUMBER, 
	"P_DRAWS" NUMBER, 
	"P_GOALS" NUMBER, 
	"P_ASSISTS" NUMBER, 
	"P_NO_OF_TITLES" NUMBER, 
	"P_CLEAN_SHEETS" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PLAYER_RECORD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FCM"."PLAYER_RECORD_PK" ON "FCM"."PLAYER_RECORD" ("PLAYER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table PLAYER_RECORD
--------------------------------------------------------

  ALTER TABLE "FCM"."PLAYER_RECORD" ADD CONSTRAINT "PLAYER_RECORD_PK" PRIMARY KEY ("PLAYER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "FCM"."PLAYER_RECORD" MODIFY ("PLAYER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table PLAYER_RECORD
--------------------------------------------------------

  ALTER TABLE "FCM"."PLAYER_RECORD" ADD CONSTRAINT "PLAYER_RECORD_FK1" FOREIGN KEY ("PLAYER_ID")
	  REFERENCES "FCM"."PLAYER" ("PLAYER_ID") ENABLE;
