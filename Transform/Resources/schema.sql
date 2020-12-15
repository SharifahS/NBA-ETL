-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "active_players_info" (
    "level_0" int   NOT NULL,
    "index" int   NOT NULL,
    "PLAYER" varchar   NOT NULL,
    "POS" varchar   NOT NULL,
    "HEIGHT" varchar   NOT NULL,
    "WEIGHT" int   NOT NULL,
    "BIRTH_DATE" int   NOT NULL,
    "NATIONALITY" varchar   NOT NULL,
    "EXPERIENCE" varchar   NOT NULL,
    "COLLEGE" varchar   NOT NULL,
    CONSTRAINT "pk_active_players_info" PRIMARY KEY (
        "PLAYER"
     )
);

CREATE TABLE "GOAT_playoffs_games" (
    "name" varchar   NOT NULL,
    "Player_ID" int   NOT NULL,
    "MATCHUP" varchar   NOT NULL,
    "WL" varchar   NOT NULL,
    "FG3_PCT" float   NOT NULL,
    "FGM" int   NOT NULL,
    "FTM" int   NOT NULL,
    "MIN" int   NOT NULL,
    "REB" int   NOT NULL,
    "AST" float   NOT NULL,
    "PTS" int   NOT NULL,
    "BLK" float   NOT NULL,
    "STL" float   NOT NULL,
    CONSTRAINT "pk_GOAT_playoffs_games" PRIMARY KEY (
        "name"
     )
);

CREATE TABLE "NBA_Season_Data" (
    "Year" int   NOT NULL,
    "Tm" varchar   NOT NULL,
    "Player" varchar   NOT NULL,
    "Age" int   NOT NULL,
    "G" int   NOT NULL,
    "MP" int   NOT NULL,
    "PER" float   NOT NULL,
    "TS%" float   NOT NULL,
    "3PAr" float   NOT NULL,
    "FTr" float   NOT NULL,
    "ORB%" float   NOT NULL,
    "DRB%" float   NOT NULL,
    "TRB%" float   NOT NULL,
    "AST%" float   NOT NULL,
    "STL%" float   NOT NULL,
    "BLK%" float   NOT NULL,
    "TOV%" float   NOT NULL,
    "USG%" float   NOT NULL,
    CONSTRAINT "pk_NBA_Season_Data" PRIMARY KEY (
        "Tm"
     )
);

CREATE TABLE "player_per_game_stats" (
    "Player" varchar   NOT NULL,
    "Pos" varchar   NOT NULL,
    "Age" float   NOT NULL,
    "Tm" varchar   NOT NULL,
    "G" float   NOT NULL,
    "GS" float   NOT NULL,
    "MP" float   NOT NULL,
    "FG" float   NOT NULL,
    "FGA" float   NOT NULL,
    "FG%" varchar   NOT NULL,
    "3P" float   NOT NULL,
    "3PA" float   NOT NULL,
    "3P%" varchar   NOT NULL,
    "2P" float   NOT NULL,
    "2PA" float   NOT NULL,
    "2P%" varchar   NOT NULL,
    "eFG%" varchar   NOT NULL,
    "FT" float   NOT NULL,
    "FTA" float   NOT NULL,
    "FT%" varchar   NOT NULL,
    "ORB" float   NOT NULL,
    "DRB" float   NOT NULL,
    "TRB" float   NOT NULL,
    "AST" float   NOT NULL,
    "STL" float   NOT NULL,
    "BLK" float   NOT NULL,
    "TOV" float   NOT NULL,
    "PF" float   NOT NULL,
    "PTS" float   NOT NULL,
    CONSTRAINT "pk_player_per_game_stats" PRIMARY KEY (
        "Player"
     )
);

CREATE TABLE "Team_Player" (
    "Team_Name" varchar   NOT NULL,
    "Team_Abbr" varchar   NOT NULL,
    CONSTRAINT "pk_Team_Player" PRIMARY KEY (
        "Team_Abbr"
     )
);

ALTER TABLE "GOAT_playoffs_games" ADD CONSTRAINT "fk_GOAT_playoffs_games_name" FOREIGN KEY("name")
REFERENCES "active_players_info" ("PLAYER");

ALTER TABLE "NBA_Season_Data" ADD CONSTRAINT "fk_NBA_Season_Data_Tm" FOREIGN KEY("Tm")
REFERENCES "Team_Player" ("Team_Abbr");

ALTER TABLE "NBA_Season_Data" ADD CONSTRAINT "fk_NBA_Season_Data_Player" FOREIGN KEY("Player")
REFERENCES "GOAT_playoffs_games" ("name");

ALTER TABLE "player_per_game_stats" ADD CONSTRAINT "fk_player_per_game_stats_Player" FOREIGN KEY("Player")
REFERENCES "active_players_info" ("PLAYER");

