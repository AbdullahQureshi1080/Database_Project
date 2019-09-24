INSERT INTO Agent (Agent_ID,A_name,A_age,A_Nationality,A_Contact)
VALUES ('ABD','Abdullah Najam Qureshi',20,'Pakistani',03127867569);

INSERT INTO Agent (Agent_ID,A_name,A_age,A_Nationality,A_Contact)
VALUES ('ABN','Abdullah Nadeem',21,'Pakistani',03456789168);

INSERT INTO Agent (Agent_ID,A_name,A_age,A_Nationality,A_Contact)
VALUES ( 'MOE','Moeez Atlas',21,'Pakistani',03657821968);

INSERT INTO Agent (Agent_ID,A_name,A_age,A_Nationality,A_Contact)
VALUES ( 'DOE','Moeez Atlas',21,'Pakistani',+923657821968);

DELETE FROM AGENT WHERE Agent_ID = 'DOE';
UPDATE AGENT SET A_age = 25 WHERE a_name = 'Moeez Atlas'; 
Commit work;

SELECT * FROM club;

-------------------------------------------------------------------------------------------------------------------
---ALL TABLES VALUES - INSERTION TEST 1
--------------------------------------------------------------------------------------------------------------------
INSERT INTO Skill (Skill_id,S_name,S_value,player_id)
VALUES ('CF','Complete Forward',5,'LM10');

INSERT INTO Position (Position_id,P_name)
VALUES ('CF','Center Forward');

INSERT INTO Contract (Contract_id,Salary,release_clause,lenght)
VALUES ('B10C','50M $', 'Not for Sale', 5);

----------------------------------------------------------------------------------------------------

INSERT INTO Training (Training_ID,T_name,No_Of_Drills,Duration,Type)
VALUES ('Routine1','Shooting Accurcay',5,'30 Mins','Attacking');

INSERT INTO LEAGUE (LEAGUE_ID,l_year,l_name,Current_Champions)
VALUES ('LALIGA',2019,'LA LIGA SANTANDER','BARCELONA');

INSERT INTO COMPETITION (Competition_ID,C_year,C_name,Current_Champions)
VALUES ('UCL',2019,'UEFA CHAMPIONS LEAGUE','Real Madrid');

INSERT INTO location (location_ID,Street_no,city_name,country_name)
VALUES ('CN','','Barcelona','Spain');

INSERT INTO Stadium (Stadium_name,Capacity,Pitch_type,Pitch_pattern,location_id)
VALUES ('CAMP NOU',92000,'Soft','Squares','CN');

INSERT INTO Manager (Manager_id,M_name,m_age,m_nationality,contract_id,contact)
VALUES ('EV','ERNESTO VALVERDE',49,'SPANISH','BMC','03218906758');

INSERT INTO manager_record (manager_id,m_Wins,m_Loses,m_Draws,m_Total_Games,m_No_Of_Titles)
VALUES ('EV',100,40,70,210,10);

INSERT INTO Player (Player_id,P_name,P_age,P_nationality,contract_id,agent_id,contact)
VALUES ('LM10','Lional Messi',31,'Argentian','B10C','ABD','03218874834');

INSERT INTO player_record (player_id,p_Total_Games,p_Wins,p_Loses,p_Draws,p_goals,p_assists,p_no_of_titles,p_clean_sheets)
VALUES ('LM10',686,460,86,140,602,300,33,'');

INSERT INTO FIXTURE (FIXTURE_ID,Competition_id,league_id,status,day,time,location_id)
---DATE '2015-12-17'
VALUES ('MD1','','LALIGA','In Top 5',DATE '2017-12-17','23:30','CN');

INSERT INTO FIXTURE (FIXTURE_ID,Competition_id,league_id,status,day,time,location_id)
---DATE '2015-12-17'
VALUES ('GSMD1','UCL','','Group Stage',DATE '2018-12-17','20:30','CN');


INSERT INTO CLUB (Club_Name,Initials,Worth,No_Of_Players,Training_Id,League_ID,
Competition_ID,Stadium_Name,Manager_ID)
VALUES ('Barcelona','BAR','2.5B $',40,'Routine1','LALIGA','UCL','CAMP NOU','EV');

INSERT INTO winning_year (win_year_id,year,competition_name)
VALUES ('97','1997','UEFA CHAMPIONS LEAGUE');

INSERT INTO CLUB_RECORD (Club_Name,C_Total_Games,C_Wins,C_Loses,C_Draws,C_No_Of_Titles)
VALUES ('Barcelona',5000,3500,700,800,100);



-----------------------------------------------------------------------------------------------------------------------
---ALL TABLES VALUES - INSERTION TEST 2
-----------------------------------------------------------------------------------------------------------------------

INSERT INTO Skill (Skill_id,S_name,S_value,player_id)
VALUES ('ATH','Athelete',3.5,'PP10');

INSERT INTO Position (Position_id,P_name)
VALUES ('CM','Central Midfielder');

INSERT INTO Contract (Contract_id,Salary,release_clause,lenght)
VALUES ('M10C','8M $', '200M', 3);

----------------------------------------------------------------------------------------------------------------------------

INSERT INTO Training (Training_ID,T_name,No_Of_Drills,Duration,Type)
VALUES ('Routine2','Tackling Technique',5,'40 Mins','Defending');

INSERT INTO LEAGUE (LEAGUE_ID,l_year,l_name,Current_Champions)
VALUES ('EPL',2019,'ENGLISH PREMIER LEAGUE','MANCHESTER UNITED');

INSERT INTO COMPETITION (Competition_ID,C_year,C_name,Current_Champions)
VALUES ('FA CUP',2019,'FOOTBALL ASSOCIATION CUP','MANCHESTER CITY');

INSERT INTO location (location_ID,Street_no,city_name,country_name)
VALUES ('OT','','GREATER MANCHESTER','UK');

INSERT INTO Stadium (Stadium_name,Capacity,Pitch_type,Pitch_pattern)
VALUES ('OLD TRAFFORD',95000,'Hard','Rectangles','OT');

INSERT INTO Manager (Manager_id,M_name,m_age,m_nationality,contract_id,contact)
VALUES ('OGS','Gunnar Solskjær',46,'NORWEGIAN','MUMC','03218906758');

INSERT INTO manager_record (manager_id,m_Wins,m_Loses,m_Draws,m_Total_Games,m_No_Of_Titles)
VALUES ('OGS',78,22,70,170,4);

INSERT INTO Player (Player_id,P_name,P_age,P_nationality,contract_id,agent_id,contact)
VALUES ('PP10','PAUL POGBA',27,'FRENCHMEN','M10C','MOE','03218874834');

INSERT INTO player_record (player_id,p_Total_Games,p_Wins,p_Loses,p_Draws,p_goals,p_assists,p_no_of_titles,p_clean_sheets)
VALUES ('PP10',300,170,80,50,100,160,11,'');

INSERT INTO FIXTURE (FIXTURE_ID,Competition_id,league_id,status,day,time,location_id)
---DATE '2015-12-17'
VALUES ('EMD1','','EPL','In Top 5',DATE '2017-12-17','23:30','CN');

INSERT INTO FIXTURE (FIXTURE_ID,Competition_id,league_id,status,day,time,location_id)
---DATE '2015-12-17'
VALUES ('FGSMD1','FA CUP','','Group Stage',DATE '2018-12-17','20:30','OT');

INSERT INTO CLUB (Club_Name,Initials,Worth,No_Of_Players,Training_Id,League_ID,
Competition_ID,Stadium_Name,Manager_ID)
VALUES ('MANCHESTER UNITED','MANU','2B $',35,'Routine2','EPL','UCL','OLD TRAFFORD','OGS');

INSERT INTO winning_year (win_year_id,year,competition_name)
VALUES ('99','1997','UEFA CHAMPIONS LEAGUE');

INSERT INTO CLUB_RECORD (Club_Name,C_Total_Games,C_Wins,C_Loses,C_Draws,C_No_Of_Titles)
VALUES ('MANCHESTER UNITED',5000,3000,500,1500,95);


------------------------------------------------------------------------------------------------------------------------
---ALL TABLES VALUES - INSERTION TEST 3
-----------------------------------------------------------------------------------------------------------------------

INSERT INTO Skill (Skill_id,S_name,S_value,player_id)
VALUES ('CM','Complete Midfielder',5,'CR7');

INSERT INTO Position (Position_id,P_name)
VALUES ('LW','Left Winger');

INSERT INTO Contract (Contract_id,Salary,release_clause,lenght)
VALUES ('J7C','40M $', 'Not for Sale', 4);

----------------------------------------------------------------------------------------------------------------------------

INSERT INTO Training (Training_ID,T_name,No_Of_Drills,Duration,Type)
VALUES ('Routine3','Heading Technique',3,'50 Mins','Attacking');

INSERT INTO LEAGUE (LEAGUE_ID,l_year,l_name,Current_Champions)
VALUES ('SA',2019,'SERIA A','JUVENTUS');

INSERT INTO COMPETITION (Competition_ID,C_year,C_name,Current_Champions)
VALUES ('CI',2019,'Coppa Italia','AC MILAN');

INSERT INTO location (location_ID,Street_no,city_name,country_name)
VALUES ('AZ','','TURIN CITY','ITLAY');

INSERT INTO Stadium (Stadium_name,Capacity,Pitch_type,Pitch_pattern,location_id)
VALUES ('ALLIANZ',90000,'Rough','Plain','AZ');

INSERT INTO Manager (Manager_id,M_name,m_age,m_nationality,contract_id,contact)
VALUES ('MA','Massimiliano Allegri',48,'ITALIAN','JMC','03218906758');

INSERT INTO manager_record (manager_id,m_Wins,m_Loses,m_Draws,m_Total_Games,m_No_Of_Titles)
VALUES ('MA',300,190,30,80,20);

INSERT INTO Player (Player_id,P_name,P_age,P_nationality,contract_id,agent_id,contact)
VALUES ('CR7','CRISTANIO RONALDO',33,'PORTAGUESE','J7C','ABN','03218874834');

INSERT INTO player_record (player_id,p_Total_Games,p_Wins,p_Loses,p_Draws,p_goals,p_assists,p_no_of_titles,p_clean_sheets)
VALUES ('CR7',780,500,100,180,686,160,31,'');

INSERT INTO FIXTURE (FIXTURE_ID,Competition_id,league_id,status,day,time,location_id)
---DATE '2015-12-17'
VALUES ('SMD1','','SA','In Top 5',DATE '2017-12-17','23:30','TC');

INSERT INTO FIXTURE (FIXTURE_ID,Competition_id,league_id,status,day,time,location_id)
---DATE '2015-12-17'
VALUES ('CAGSMD1','CI','','Group Stage',DATE '2018-12-17','20:30','OT');


INSERT INTO CLUB (Club_Name,Initials,Worth,No_Of_Players,Training_Id,League_ID,
Competition_ID,Stadium_Name,Manager_ID)
VALUES ('JUVENTUS','JUVE','800M $',45,'Routine3','SA','UCL','ALLIANZ','MA');

INSERT INTO winning_year (win_year_id,year,competition_name)
VALUES ('14','2014','UEFA CHAMPIONS LEAGUE');

INSERT INTO CLUB_RECORD (Club_Name,C_Total_Games,C_Wins,C_Loses,C_Draws,C_No_Of_Titles)
VALUES ('JUVENTUS',4500,3000,800,700,78);

-----------------------------------------------------------------------------------------------------------------------


DELETE FROM player WHERE player_id = 'CR&';
UPDATE CLUB SET Training_ID = 'Routine4' WHERE Initials = 'CHK'; 
UPDATE CLUB SET CLUB_NAME = 'BARCELONA' WHERE CLUB_NAME = 'Barcelona'; 
UPDATE CLUB_RECORD SET CLUB_NAME = 'BARCELONA' WHERE CLUB_NAME = 'Barcelona'; 
Commit work;

SELECT * FROM Contract;
commit work;


--------------------------------------------------------------------------------------------------------------------------


INSERT INTO Player (Player_id,P_name,P_age,P_nationality,contract_id,agent_id,contact)
VALUES ('PD10','PAUBLO DYBALA',25,'ARGENTINE','J10C','ABD','12345678910');
INSERT INTO Player (Player_id,P_name,P_age,P_nationality,contract_id,agent_id,contact)
VALUES ('DC11','DOUGLAS COSTA',25,'BRAZILIAN','J11C','MOE','12345678911');

UPDATE PLAYER SET P_AGE = 28 WHERE P_NAME = 'DOUGLAS COSTA';
SELECT * FROM PLAYER ORDER BY P_NAME;
-----SELECT PLAYER.PLAYER_ID FROM PLAYER JOIN SKILL ON PLAYER.PLAYER_ID = SKILL.PLAYER_ID;
COMMIT WORK;
---------------------------------------------------------------------------------------------------------------------------
INSERT INTO Player (Player_id,P_name,P_age,P_nationality,contract_id,agent_id,contact)
VALUES ('PD10','PAUBLO DYBALA',25,'ARGENTINE','J10C','ABD','12345678910');


--------------------------------------------------------------------------------------------------------------------------------

Delete from Club where club_name = 'MANCHESTER UNITED';
Select * from club;

rollback work;