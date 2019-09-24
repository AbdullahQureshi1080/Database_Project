--------------------------------------------------------
--  File created - Wednesday-May-29-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table FIXTURE
--------------------------------------------------------

  CREATE TABLE "FCM"."FIXTURE" 
   (	"FIXTURE_ID" VARCHAR2(20 BYTE), 
	"COMPETITION_ID" VARCHAR2(20 BYTE), 
	"LEAGUE_ID" VARCHAR2(20 BYTE), 
	"STATUS" VARCHAR2(20 BYTE), 
	"DAY" DATE, 
	"TIME" VARCHAR2(20 BYTE), 
	"LOCATION_ID" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FIXTURE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FCM"."FIXTURE_PK" ON "FCM"."FIXTURE" ("FIXTURE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table FIXTURE
--------------------------------------------------------

  ALTER TABLE "FCM"."FIXTURE" ADD CONSTRAINT "FIXTURE_PK" PRIMARY KEY ("FIXTURE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "FCM"."FIXTURE" MODIFY ("FIXTURE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table FIXTURE
--------------------------------------------------------

  ALTER TABLE "FCM"."FIXTURE" ADD CONSTRAINT "FIXTURE_FK1" FOREIGN KEY ("LEAGUE_ID")
	  REFERENCES "FCM"."LEAGUE" ("LEAGUE_ID") ENABLE;
 
  ALTER TABLE "FCM"."FIXTURE" ADD CONSTRAINT "FIXTURE_FK2" FOREIGN KEY ("COMPETITION_ID")
	  REFERENCES "FCM"."COMPETITION" ("COMPETITION_ID") ENABLE;
