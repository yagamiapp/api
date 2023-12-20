/*
  Warnings:

  - You are about to drop the `AutoHostRotate` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `AutoHostRotatePlayer` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `CustomBadge` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `MappoolInRound` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ScrimSettings` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `UserWithCustomBadge` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `UserWithOsuBadge` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `UsersHostingTournament` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_MapToMappool` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropIndex
DROP INDEX "AutoHostRotate_current_host_id_key";

-- DropIndex
DROP INDEX "_MapToMappool_B_index";

-- DropIndex
DROP INDEX "_MapToMappool_AB_unique";

-- AlterTable
ALTER TABLE "Map" ADD COLUMN "star_rating_dt" REAL;
ALTER TABLE "Map" ADD COLUMN "star_rating_ez" REAL;
ALTER TABLE "Map" ADD COLUMN "star_rating_hr" REAL;
ALTER TABLE "Map" ADD COLUMN "star_rating_ht" REAL;

-- AlterTable
ALTER TABLE "MapInPool" ADD COLUMN "map_order" INTEGER;

-- AlterTable
ALTER TABLE "Team" ADD COLUMN "timezone" INTEGER;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "AutoHostRotate";
PRAGMA foreign_keys=on;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "AutoHostRotatePlayer";
PRAGMA foreign_keys=on;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "CustomBadge";
PRAGMA foreign_keys=on;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "MappoolInRound";
PRAGMA foreign_keys=on;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "ScrimSettings";
PRAGMA foreign_keys=on;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "UserWithCustomBadge";
PRAGMA foreign_keys=on;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "UserWithOsuBadge";
PRAGMA foreign_keys=on;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "UsersHostingTournament";
PRAGMA foreign_keys=on;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "_MapToMappool";
PRAGMA foreign_keys=on;

-- CreateTable
CREATE TABLE "UserTitle" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "awarded_at" DATETIME NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "image_url" TEXT NOT NULL,
    "url" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "TournamentSettings" (
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
    CONSTRAINT "TournamentSettings_tournament_id_fkey" FOREIGN KEY ("tournament_id") REFERENCES "Tournament" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "TournamentSettings_match_id_fkey" FOREIGN KEY ("match_id") REFERENCES "Match" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "TournamentSettings" ("force_nf", "score_mode", "team_mode", "team_size", "x_v_x_mode", "fm_mods", "double_pick", "double_ban", "tournament_id") SELECT "force_nf", "score_mode", "team_mode", "team_size", "x_v_x_mode", "fm_mods", "double_pick", "double_ban", "id" FROM "Tournament";

-- CreateTable
CREATE TABLE "RoundSettings" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "bans" INTEGER NOT NULL,
    "best_of" INTEGER NOT NULL,
    "protects" INTEGER NOT NULL DEFAULT 0,
    "round_id" INTEGER,
    "match_id" INTEGER,
    CONSTRAINT "RoundSettings_round_id_fkey" FOREIGN KEY ("round_id") REFERENCES "Round" ("id") ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT "RoundSettings_match_id_fkey" FOREIGN KEY ("match_id") REFERENCES "Match" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);
INSERT INTO "RoundSettings" ("bans", "best_of", "round_id") SELECT "bans", "best_of", "id" FROM "Round";

-- CreateTable
CREATE TABLE "Score" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "score" REAL NOT NULL,
    "map_identifier" TEXT NOT NULL,
    "match_id" INTEGER NOT NULL,
    "user_id" INTEGER NOT NULL,
    CONSTRAINT "Score_map_identifier_match_id_fkey" FOREIGN KEY ("map_identifier", "match_id") REFERENCES "MapInMatch" ("map_identifier", "match_id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Score_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "TeamScore" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "score" REAL NOT NULL,
    "map_identifier" TEXT NOT NULL,
    "match_id" INTEGER NOT NULL,
    "team_id" INTEGER NOT NULL,
    CONSTRAINT "TeamScore_map_identifier_match_id_fkey" FOREIGN KEY ("map_identifier", "match_id") REFERENCES "MapInMatch" ("map_identifier", "match_id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "TeamScore_team_id_fkey" FOREIGN KEY ("team_id") REFERENCES "Team" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "MappoolInMatch" (
    "mappool_id" INTEGER NOT NULL,
    "match_id" INTEGER NOT NULL,

    PRIMARY KEY ("mappool_id", "match_id"),
    CONSTRAINT "MappoolInMatch_mappool_id_fkey" FOREIGN KEY ("mappool_id") REFERENCES "Mappool" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "MappoolInMatch_match_id_fkey" FOREIGN KEY ("match_id") REFERENCES "Match" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "_OsuBadgeToUser" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL,
    CONSTRAINT "_OsuBadgeToUser_A_fkey" FOREIGN KEY ("A") REFERENCES "OsuBadge" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "_OsuBadgeToUser_B_fkey" FOREIGN KEY ("B") REFERENCES "User" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "_UserToUserTitle" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL,
    CONSTRAINT "_UserToUserTitle_A_fkey" FOREIGN KEY ("A") REFERENCES "User" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "_UserToUserTitle_B_fkey" FOREIGN KEY ("B") REFERENCES "UserTitle" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "_TournamentToUser" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL,
    CONSTRAINT "_TournamentToUser_A_fkey" FOREIGN KEY ("A") REFERENCES "Tournament" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "_TournamentToUser_B_fkey" FOREIGN KEY ("B") REFERENCES "User" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);

-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_UserInTeam" (
    "osu_id" INTEGER NOT NULL,
    "team_id" INTEGER NOT NULL,
    "member_order" INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY ("osu_id", "team_id"),
    CONSTRAINT "UserInTeam_osu_id_fkey" FOREIGN KEY ("osu_id") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "UserInTeam_team_id_fkey" FOREIGN KEY ("team_id") REFERENCES "Team" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO "new_UserInTeam" ("member_order", "osu_id", "team_id") SELECT "member_order", "osu_id", "team_id" FROM "UserInTeam";
DROP TABLE "UserInTeam";
ALTER TABLE "new_UserInTeam" RENAME TO "UserInTeam";
CREATE TABLE "new_MapInMatch" (
    "match_id" INTEGER NOT NULL,
    "map_identifier" TEXT NOT NULL,
    "pool_id" INTEGER NOT NULL,
    "protected_by_id" INTEGER,
    "banned_by_id" INTEGER,
    "picked_by_id" INTEGER,
    "pick_number" INTEGER,
    "pick_team_number" INTEGER,
    "won_by_id" INTEGER,
    "qualifier_id" INTEGER,

    PRIMARY KEY ("map_identifier", "match_id"),
    CONSTRAINT "MapInMatch_map_identifier_pool_id_fkey" FOREIGN KEY ("map_identifier", "pool_id") REFERENCES "MapInPool" ("identifier", "mappool_id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "MapInMatch_match_id_fkey" FOREIGN KEY ("match_id") REFERENCES "Match" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "MapInMatch_match_id_protected_by_id_fkey" FOREIGN KEY ("match_id", "protected_by_id") REFERENCES "TeamInMatch" ("match_id", "team_id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "MapInMatch_match_id_banned_by_id_fkey" FOREIGN KEY ("match_id", "banned_by_id") REFERENCES "TeamInMatch" ("match_id", "team_id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "MapInMatch_match_id_picked_by_id_fkey" FOREIGN KEY ("match_id", "picked_by_id") REFERENCES "TeamInMatch" ("match_id", "team_id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "MapInMatch_match_id_won_by_id_fkey" FOREIGN KEY ("match_id", "won_by_id") REFERENCES "TeamInMatch" ("match_id", "team_id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "MapInMatch_qualifier_id_fkey" FOREIGN KEY ("qualifier_id") REFERENCES "QualifierMatch" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);
INSERT INTO "new_MapInMatch" ("banned_by_id", "map_identifier", "match_id", "pick_number", "pick_team_number", "picked_by_id", "pool_id", "won_by_id") SELECT "banned_by_id", "map_identifier", "match_id", "pick_number", "pick_team_number", "picked_by_id", "pool_id", "won_by_id" FROM "MapInMatch";
DROP TABLE "MapInMatch";
ALTER TABLE "new_MapInMatch" RENAME TO "MapInMatch";
CREATE TABLE "new_Mappool" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "description" TEXT,
    "public" BOOLEAN NOT NULL DEFAULT false
);
INSERT INTO "new_Mappool" ("description", "id", "name", "public") SELECT "description", "id", "name", "public" FROM "Mappool";
DROP TABLE "Mappool";
ALTER TABLE "new_Mappool" RENAME TO "Mappool";
CREATE TABLE "new_Round" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "acronym" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "is_qualifier" BOOLEAN NOT NULL DEFAULT false,
    "tournament_id" INTEGER NOT NULL,
    CONSTRAINT "Round_tournament_id_fkey" FOREIGN KEY ("tournament_id") REFERENCES "Tournament" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO "new_Round" ("acronym", "id", "is_qualifier", "name", "tournament_id") SELECT "acronym", "id", "is_qualifier", "name", "tournament_id" FROM "Round";
DROP TABLE "Round";
ALTER TABLE "new_Round" RENAME TO "Round";
CREATE TABLE "new_Tournament" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "acronym" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "color" TEXT NOT NULL,
    "banner_url" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "icon_url" TEXT NOT NULL,
    "allow_registrations" BOOLEAN NOT NULL,
    "guild_id" TEXT,
    "private" BOOLEAN NOT NULL DEFAULT false,
    "twitch_account_id" INTEGER,
    CONSTRAINT "Tournament_guild_id_fkey" FOREIGN KEY ("guild_id") REFERENCES "Guild" ("guild_id") ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT "Tournament_twitch_account_id_fkey" FOREIGN KEY ("twitch_account_id") REFERENCES "TwitchAccount" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);
INSERT INTO "new_Tournament" ("acronym", "allow_registrations", "banner_url", "color", "description", "guild_id", "icon_url", "id", "name", "private", "twitch_account_id") SELECT "acronym", "allow_registrations", "banner_url", "color", "description", "guild_id", "icon_url", "id", "name", "private", "twitch_account_id" FROM "Tournament";
DROP TABLE "Tournament";
ALTER TABLE "new_Tournament" RENAME TO "Tournament";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;

-- CreateIndex
CREATE UNIQUE INDEX "TournamentSettings_tournament_id_key" ON "TournamentSettings"("tournament_id");

-- CreateIndex
CREATE UNIQUE INDEX "TournamentSettings_match_id_key" ON "TournamentSettings"("match_id");

-- CreateIndex
CREATE UNIQUE INDEX "RoundSettings_round_id_key" ON "RoundSettings"("round_id");

-- CreateIndex
CREATE UNIQUE INDEX "RoundSettings_match_id_key" ON "RoundSettings"("match_id");

-- CreateIndex
CREATE UNIQUE INDEX "_OsuBadgeToUser_AB_unique" ON "_OsuBadgeToUser"("A", "B");

-- CreateIndex
CREATE INDEX "_OsuBadgeToUser_B_index" ON "_OsuBadgeToUser"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_UserToUserTitle_AB_unique" ON "_UserToUserTitle"("A", "B");

-- CreateIndex
CREATE INDEX "_UserToUserTitle_B_index" ON "_UserToUserTitle"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_TournamentToUser_AB_unique" ON "_TournamentToUser"("A", "B");

-- CreateIndex
CREATE INDEX "_TournamentToUser_B_index" ON "_TournamentToUser"("B");
