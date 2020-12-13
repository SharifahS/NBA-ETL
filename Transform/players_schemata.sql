-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


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

CREATE TABLE "NBA_Season_Data" (
    "Year" int   NOT NULL,
    "Tm" varchar   NOT NULL,
    "Player" varchar   NOT NULL,
    "Age" int   NOT NULL,
    "G" int   NOT NULL,
    "MP" int   NOT NULL,
    "PER" int   NOT NULL,
    "TS%" int   NOT NULL,
    "3PAr" int   NOT NULL,
    "FTr" int   NOT NULL,
    "ORB%" float   NOT NULL,
    "DRB%" float   NOT NULL,
    "TRB%" float   NOT NULL,
    "AST%" float   NOT NULL,
    "STL%" float   NOT NULL,
    "BLK%" float   NOT NULL,
    "TOV%" float   NOT NULL,
    "USG%" float   NOT NULL,
    CONSTRAINT "pk_NBA_Season_Data" PRIMARY KEY (
        "Player"
     )
);

ALTER TABLE "NBA_Season_Data" ADD CONSTRAINT "fk_NBA_Season_Data_Player" FOREIGN KEY("Player")
REFERENCES "player_per_game_stats" ("Player");

