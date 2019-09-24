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



--------------------------------------------------------
--  DDL for Table SKILL
--------------------------------------------------------

  CREATE TABLE "FCM"."SKILL" 
   (	"SKILL_ID" VARCHAR2(20 BYTE), 
	"S_NAME" VARCHAR2(20 BYTE), 
	"S_VALUE" NUMBER(1,0), 
	"PLAYER_ID" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SKILL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FCM"."SKILL_PK" ON "FCM"."SKILL" ("SKILL_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table SKILL
--------------------------------------------------------

  ALTER TABLE "FCM"."SKILL" ADD CONSTRAINT "SKILL_PK" PRIMARY KEY ("SKILL_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "FCM"."SKILL" MODIFY ("SKILL_ID" NOT NULL ENABLE);



-------------------------------------------------------
--  DDL for Table PLAYER
--------------------------------------------------------

  CREATE TABLE "FCM"."PLAYER" 
   (	"PLAYER_ID" VARCHAR2(20 BYTE), 
	"P_NAME" VARCHAR2(20 BYTE), 
	"P_AGE" NUMBER(2,0), 
	"P_NATIONALITY" VARCHAR2(20 BYTE), 
	"CONTRACT_ID" VARCHAR2(20 BYTE), 
	"AGENT_ID" VARCHAR2(20 BYTE), 
	"CONTACT" NUMBER(15,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PLAYER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FCM"."PLAYER_PK" ON "FCM"."PLAYER" ("PLAYER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table PLAYER
--------------------------------------------------------

  ALTER TABLE "FCM"."PLAYER" ADD CONSTRAINT "PLAYER_PK" PRIMARY KEY ("PLAYER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "FCM"."PLAYER" MODIFY ("PLAYER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table PLAYER
--------------------------------------------------------

  ALTER TABLE "FCM"."PLAYER" ADD CONSTRAINT "PLAYER_FK3" FOREIGN KEY ("AGENT_ID")
	  REFERENCES "FCM"."AGENT" ("AGENT_ID") ENABLE;
 
  ALTER TABLE "FCM"."PLAYER" ADD CONSTRAINT "PLAYER_FK4" FOREIGN KEY ("CONTRACT_ID")
	  REFERENCES "FCM"."CONTRACT" ("CONTRACT_ID") ENABLE;


--------------------------------------------------------
--  DDL for Table MANAGER
--------------------------------------------------------

  CREATE TABLE "FCM"."MANAGER" 
   (	"MANAGER_ID" VARCHAR2(20 BYTE), 
	"M_NAME" VARCHAR2(30 BYTE), 
	"M_AGE" NUMBER(2,0), 
	"M_NATIONALITY" VARCHAR2(20 BYTE), 
	"CONTRACT_ID" VARCHAR2(20 BYTE), 
	"CONTACT" NUMBER(15,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MANAGER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FCM"."MANAGER_PK" ON "FCM"."MANAGER" ("MANAGER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table MANAGER
--------------------------------------------------------

  ALTER TABLE "FCM"."MANAGER" ADD CONSTRAINT "MANAGER_PK" PRIMARY KEY ("MANAGER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "FCM"."MANAGER" MODIFY ("MANAGER_ID" NOT NULL ENABLE);


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



--------------------------------------------------------
--  DDL for Table CLUB_RECORD
--------------------------------------------------------

  CREATE TABLE "FCM"."CLUB_RECORD" 
   (	"CLUB_NAME" VARCHAR2(30 BYTE), 
	"C_TOTAL_GAMES" NUMBER, 
	"C_WINS" NUMBER, 
	"C_LOSES" NUMBER, 
	"C_DRAWS" NUMBER, 
	"C_NO_OF_TITLES" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CLUB_RECORD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FCM"."CLUB_RECORD_PK" ON "FCM"."CLUB_RECORD" ("CLUB_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table CLUB_RECORD
--------------------------------------------------------

  ALTER TABLE "FCM"."CLUB_RECORD" ADD CONSTRAINT "CLUB_RECORD_PK" PRIMARY KEY ("CLUB_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "FCM"."CLUB_RECORD" MODIFY ("CLUB_NAME" NOT NULL ENABLE);



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



---------------------------------------------------------
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




--------------------------------------------------------
--  DDL for Table LOCATION
--------------------------------------------------------

  CREATE TABLE "FCM"."LOCATION" 
   (	"LOCATION_ID" VARCHAR2(20 BYTE), 
	"STREET_NO" VARCHAR2(20 BYTE), 
	"CITY_NAME" VARCHAR2(20 BYTE), 
	"COUNTRY_NAME" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LOCATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FCM"."LOCATION_PK" ON "FCM"."LOCATION" ("LOCATION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table LOCATION
--------------------------------------------------------

  ALTER TABLE "FCM"."LOCATION" ADD CONSTRAINT "LOCATION_PK" PRIMARY KEY ("LOCATION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "FCM"."LOCATION" MODIFY ("LOCATION_ID" NOT NULL ENABLE);



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



--------------------------------------------------------
--  DDL for Table STADIUM
--------------------------------------------------------

  CREATE TABLE "FCM"."STADIUM" 
   (	"STADIUM_NAME" VARCHAR2(20 BYTE), 
	"CAPACITY" NUMBER, 
	"PITCH_TYPE" VARCHAR2(30 BYTE), 
	"PITCH_PATTERN" VARCHAR2(20 BYTE), 
	"LOCATION_ID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index STADIUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FCM"."STADIUM_PK" ON "FCM"."STADIUM" ("STADIUM_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table STADIUM
--------------------------------------------------------

  ALTER TABLE "FCM"."STADIUM" ADD CONSTRAINT "STADIUM_PK" PRIMARY KEY ("STADIUM_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "FCM"."STADIUM" MODIFY ("STADIUM_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table STADIUM
--------------------------------------------------------

  ALTER TABLE "FCM"."STADIUM" ADD CONSTRAINT "STADIUM_FK1" FOREIGN KEY ("LOCATION_ID")
	  REFERENCES "FCM"."LOCATION" ("LOCATION_ID") ENABLE;
