--------------------------------------------------------
--  File created - Wednesday-May-29-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MANAGER_RECORD
--------------------------------------------------------

  CREATE TABLE "FCM"."MANAGER_RECORD" 
   (	"MANAGER_ID" VARCHAR2(20 BYTE), 
	"M_WINS" NUMBER, 
	"M_LOSES" NUMBER, 
	"M_DRAWS" NUMBER, 
	"M_TOTAL_GAMES" NUMBER, 
	"M_NO_OF_TITLES" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MANAGER_RECORD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FCM"."MANAGER_RECORD_PK" ON "FCM"."MANAGER_RECORD" ("MANAGER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table MANAGER_RECORD
--------------------------------------------------------

  ALTER TABLE "FCM"."MANAGER_RECORD" ADD CONSTRAINT "MANAGER_RECORD_PK" PRIMARY KEY ("MANAGER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "FCM"."MANAGER_RECORD" MODIFY ("MANAGER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table MANAGER_RECORD
--------------------------------------------------------

  ALTER TABLE "FCM"."MANAGER_RECORD" ADD CONSTRAINT "MANAGER_RECORD_FK1" FOREIGN KEY ("MANAGER_ID")
	  REFERENCES "FCM"."MANAGER" ("MANAGER_ID") ENABLE;
