--------------------------------------------------------
--  File created - Thursday-May-30-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CLUB
--------------------------------------------------------

  CREATE TABLE "FCM"."CLUB" 
   (	"CLUB_NAME" VARCHAR2(25 BYTE), 
	"INITIALS" CHAR(5 BYTE), 
	"WORTH" VARCHAR2(20 BYTE), 
	"NO_OF_PLAYERS" NUMBER, 
	"TRAINING_ID" VARCHAR2(20 BYTE), 
	"LEAGUE_ID" VARCHAR2(30 BYTE), 
	"COMPETITION_ID" VARCHAR2(20 BYTE), 
	"STADIUM_NAME" VARCHAR2(30 BYTE), 
	"MANAGER_ID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CLUB_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FCM"."CLUB_PK" ON "FCM"."CLUB" ("CLUB_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger CLUB_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "FCM"."CLUB_TRG" 
BEFORE INSERT ON CLUB 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "FCM"."CLUB_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table CLUB
--------------------------------------------------------

  ALTER TABLE "FCM"."CLUB" ADD CONSTRAINT "CLUB_PK" PRIMARY KEY ("CLUB_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "FCM"."CLUB" MODIFY ("CLUB_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CLUB
--------------------------------------------------------

  ALTER TABLE "FCM"."CLUB" ADD CONSTRAINT "CLUB_FK1" FOREIGN KEY ("MANAGER_ID")
	  REFERENCES "FCM"."MANAGER" ("MANAGER_ID") ENABLE;
 
  ALTER TABLE "FCM"."CLUB" ADD CONSTRAINT "CLUB_FK2" FOREIGN KEY ("TRAINING_ID")
	  REFERENCES "FCM"."TRAINING" ("TRAINING_ID") ENABLE;
 
  ALTER TABLE "FCM"."CLUB" ADD CONSTRAINT "CLUB_FK4" FOREIGN KEY ("LEAGUE_ID")
	  REFERENCES "FCM"."LEAGUE" ("LEAGUE_ID") ENABLE;
 
  ALTER TABLE "FCM"."CLUB" ADD CONSTRAINT "CLUB_FK5" FOREIGN KEY ("COMPETITION_ID")
	  REFERENCES "FCM"."COMPETITION" ("COMPETITION_ID") ENABLE;
 
  ALTER TABLE "FCM"."CLUB" ADD CONSTRAINT "CLUB_FK6" FOREIGN KEY ("STADIUM_NAME")
	  REFERENCES "FCM"."STADIUM" ("STADIUM_NAME") ENABLE;
