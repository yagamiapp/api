-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Score" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "score" REAL NOT NULL,
    "mods" TEXT NOT NULL DEFAULT '',
    "map_identifier" TEXT NOT NULL,
    "match_id" INTEGER NOT NULL,
    "user_id" INTEGER NOT NULL,
    "team_score_id" INTEGER,
    CONSTRAINT "Score_map_identifier_match_id_fkey" FOREIGN KEY ("map_identifier", "match_id") REFERENCES "MapInMatch" ("map_identifier", "match_id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Score_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Score_team_score_id_fkey" FOREIGN KEY ("team_score_id") REFERENCES "TeamScore" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);
INSERT INTO "new_Score" ("id", "map_identifier", "match_id", "score", "user_id") SELECT "id", "map_identifier", "match_id", "score", "user_id" FROM "Score";
DROP TABLE "Score";
ALTER TABLE "new_Score" RENAME TO "Score";
CREATE TABLE "new_TournamentSettings" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "force_nf" BOOLEAN NOT NULL,
    "score_mode" INTEGER NOT NULL,
    "team_mode" INTEGER NOT NULL,
    "team_size" INTEGER NOT NULL,
    "x_v_x_mode" INTEGER NOT NULL,
    "fm_mods" INTEGER NOT NULL DEFAULT 1,
    "double_pick" INTEGER NOT NULL DEFAULT 1,
    "double_ban" INTEGER NOT NULL DEFAULT 1,
    "tournament_id" INTEGER,
    "match_id" INTEGER,
    CONSTRAINT "TournamentSettings_tournament_id_fkey" FOREIGN KEY ("tournament_id") REFERENCES "Tournament" ("id") ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT "TournamentSettings_match_id_fkey" FOREIGN KEY ("match_id") REFERENCES "Match" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);
INSERT INTO "new_TournamentSettings" ("double_ban", "double_pick", "fm_mods", "force_nf", "id", "match_id", "score_mode", "team_mode", "team_size", "tournament_id", "x_v_x_mode") SELECT "double_ban", "double_pick", "fm_mods", "force_nf", "id", "match_id", "score_mode", "team_mode", "team_size", "tournament_id", "x_v_x_mode" FROM "TournamentSettings";
DROP TABLE "TournamentSettings";
ALTER TABLE "new_TournamentSettings" RENAME TO "TournamentSettings";
CREATE UNIQUE INDEX "TournamentSettings_tournament_id_key" ON "TournamentSettings"("tournament_id");
CREATE UNIQUE INDEX "TournamentSettings_match_id_key" ON "TournamentSettings"("match_id");
CREATE TABLE "new_TeamScore" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "score" REAL NOT NULL,
    "freemod" BOOLEAN NOT NULL DEFAULT false,
    "map_identifier" TEXT NOT NULL,
    "match_id" INTEGER NOT NULL,
    "team_id" INTEGER NOT NULL,
    CONSTRAINT "TeamScore_map_identifier_match_id_fkey" FOREIGN KEY ("map_identifier", "match_id") REFERENCES "MapInMatch" ("map_identifier", "match_id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "TeamScore_team_id_fkey" FOREIGN KEY ("team_id") REFERENCES "Team" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_TeamScore" ("id", "map_identifier", "match_id", "score", "team_id") SELECT "id", "map_identifier", "match_id", "score", "team_id" FROM "TeamScore";
DROP TABLE "TeamScore";
ALTER TABLE "new_TeamScore" RENAME TO "TeamScore";
CREATE TABLE "new_RoundSettings" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "bans" INTEGER NOT NULL,
    "best_of" INTEGER NOT NULL,
    "protects" INTEGER NOT NULL,
    "round_id" INTEGER,
    "match_id" INTEGER,
    CONSTRAINT "RoundSettings_round_id_fkey" FOREIGN KEY ("round_id") REFERENCES "Round" ("id") ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT "RoundSettings_match_id_fkey" FOREIGN KEY ("match_id") REFERENCES "Match" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);
INSERT INTO "new_RoundSettings" ("bans", "best_of", "id", "match_id", "protects", "round_id") SELECT "bans", "best_of", "id", "match_id", "protects", "round_id" FROM "RoundSettings";
DROP TABLE "RoundSettings";
ALTER TABLE "new_RoundSettings" RENAME TO "RoundSettings";
CREATE UNIQUE INDEX "RoundSettings_round_id_key" ON "RoundSettings"("round_id");
CREATE UNIQUE INDEX "RoundSettings_match_id_key" ON "RoundSettings"("match_id");
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
