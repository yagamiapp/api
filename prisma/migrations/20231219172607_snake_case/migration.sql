/*
  Warnings:

  - You are about to drop the `QualifierRound` table. If the table is not empty, all the data it contains will be lost.
  - The primary key for the `OsuOauth` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `userId` on the `OsuOauth` table. All the data in the column will be lost.
  - You are about to drop the column `osuId` on the `DiscordAccount` table. All the data in the column will be lost.
  - You are about to drop the column `osuId` on the `TwitchAccount` table. All the data in the column will be lost.
  - The primary key for the `TwitchOauth` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `userId` on the `TwitchOauth` table. All the data in the column will be lost.
  - The primary key for the `DiscordOauth` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `userId` on the `DiscordOauth` table. All the data in the column will be lost.
  - You are about to drop the column `lobbyId` on the `AutoHostRotatePlayer` table. All the data in the column will be lost.
  - You are about to drop the column `matchExactly` on the `ModMultiplier` table. All the data in the column will be lost.
  - You are about to drop the column `modString` on the `ModMultiplier` table. All the data in the column will be lost.
  - The primary key for the `MapInMatch` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `bannedByMatchId` on the `MapInMatch` table. All the data in the column will be lost.
  - You are about to drop the column `bannedByTeamId` on the `MapInMatch` table. All the data in the column will be lost.
  - You are about to drop the column `mapIdentifier` on the `MapInMatch` table. All the data in the column will be lost.
  - You are about to drop the column `matchId` on the `MapInMatch` table. All the data in the column will be lost.
  - You are about to drop the column `pickNumber` on the `MapInMatch` table. All the data in the column will be lost.
  - You are about to drop the column `pickTeamNumber` on the `MapInMatch` table. All the data in the column will be lost.
  - You are about to drop the column `pickedByMatchId` on the `MapInMatch` table. All the data in the column will be lost.
  - You are about to drop the column `pickedByTeamId` on the `MapInMatch` table. All the data in the column will be lost.
  - You are about to drop the column `poolId` on the `MapInMatch` table. All the data in the column will be lost.
  - You are about to drop the column `wonByMatchId` on the `MapInMatch` table. All the data in the column will be lost.
  - You are about to drop the column `wonByTeamId` on the `MapInMatch` table. All the data in the column will be lost.
  - The primary key for the `TeamInMatch` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `matchId` on the `TeamInMatch` table. All the data in the column will be lost.
  - You are about to drop the column `teamId` on the `TeamInMatch` table. All the data in the column will be lost.
  - The primary key for the `AutoHostRotate` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `currentHostId` on the `AutoHostRotate` table. All the data in the column will be lost.
  - You are about to drop the column `osuId` on the `AutoHostRotate` table. All the data in the column will be lost.
  - The primary key for the `ScrimSettings` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `matchId` on the `ScrimSettings` table. All the data in the column will be lost.
  - You are about to drop the column `global` on the `Mappool` table. All the data in the column will be lost.
  - You are about to drop the column `round_acronym` on the `Mappool` table. All the data in the column will be lost.
  - You are about to drop the column `round_name` on the `Mappool` table. All the data in the column will be lost.
  - You are about to drop the column `tournament_acronym` on the `Mappool` table. All the data in the column will be lost.
  - You are about to drop the column `tournament_iteration` on the `Mappool` table. All the data in the column will be lost.
  - You are about to drop the column `tournament_name` on the `Mappool` table. All the data in the column will be lost.
  - You are about to drop the column `roundId` on the `Match` table. All the data in the column will be lost.
  - The primary key for the `UserInTeam` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `osuId` on the `UserInTeam` table. All the data in the column will be lost.
  - You are about to drop the column `teamId` on the `UserInTeam` table. All the data in the column will be lost.
  - The primary key for the `TeamInvite` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `inviteeUserId` on the `TeamInvite` table. All the data in the column will be lost.
  - You are about to drop the column `teamId` on the `TeamInvite` table. All the data in the column will be lost.
  - You are about to drop the column `Guild_id` on the `Tournament` table. All the data in the column will be lost.
  - You are about to drop the column `twitchAccountId` on the `Tournament` table. All the data in the column will be lost.
  - The primary key for the `Map` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `approved` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `approved_date` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `audio_unavailable` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `beatmap_id` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `count_normal` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `count_slider` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `count_spinner` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `creator` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `creator_id` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `diff_aim` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `diff_approach` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `diff_drain` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `diff_overall` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `diff_size` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `diff_speed` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `difficultyrating` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `download_unavailable` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `favourite_count` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `file_md5` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `genre_id` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `language_id` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `last_update` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `mode` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `packs` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `passcount` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `playcount` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `rating` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `source` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `storyboard` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `submit_date` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `tags` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `version` on the `Map` table. All the data in the column will be lost.
  - You are about to drop the column `video` on the `Map` table. All the data in the column will be lost.
  - You are about to alter the column `beatmapset_id` on the `Map` table. The data in that column could be lost. The data in that column will be cast from `String` to `Int`.
  - You are about to alter the column `bpm` on the `Map` table. The data in that column could be lost. The data in that column will be cast from `String` to `Float`.
  - You are about to alter the column `hit_length` on the `Map` table. The data in that column could be lost. The data in that column will be cast from `String` to `Int`.
  - You are about to alter the column `max_combo` on the `Map` table. The data in that column could be lost. The data in that column will be cast from `String` to `Int`.
  - You are about to alter the column `total_length` on the `Map` table. The data in that column could be lost. The data in that column will be cast from `String` to `Int`.
  - You are about to drop the column `createdAt` on the `UserSession` table. All the data in the column will be lost.
  - You are about to drop the column `lastUsed` on the `UserSession` table. All the data in the column will be lost.
  - You are about to drop the column `osuId` on the `UserSession` table. All the data in the column will be lost.
  - You are about to drop the column `tournamentId` on the `Team` table. All the data in the column will be lost.
  - The primary key for the `UserWithCustomBadge` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `badgeId` on the `UserWithCustomBadge` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `UserWithCustomBadge` table. All the data in the column will be lost.
  - The primary key for the `UserWithOsuBadge` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `badgeId` on the `UserWithOsuBadge` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `UserWithOsuBadge` table. All the data in the column will be lost.
  - You are about to drop the column `mappoolId` on the `Round` table. All the data in the column will be lost.
  - You are about to drop the column `show_mappool` on the `Round` table. All the data in the column will be lost.
  - You are about to drop the column `tournamentId` on the `Round` table. All the data in the column will be lost.
  - The primary key for the `UsersHostingTournament` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `tourney` on the `UsersHostingTournament` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `UsersHostingTournament` table. All the data in the column will be lost.
  - The primary key for the `MapInPool` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `mapId` on the `MapInPool` table. All the data in the column will be lost.
  - You are about to drop the column `mappoolId` on the `MapInPool` table. All the data in the column will be lost.
  - You are about to drop the column `modPriority` on the `MapInPool` table. All the data in the column will be lost.
  - The primary key for the `TeamInQualifierMatch` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `matchId` on the `TeamInQualifierMatch` table. All the data in the column will be lost.
  - You are about to drop the column `teamId` on the `TeamInQualifierMatch` table. All the data in the column will be lost.
  - Added the required column `user_id` to the `OsuOauth` table without a default value. This is not possible if the table is not empty.
  - Added the required column `osu_id` to the `DiscordAccount` table without a default value. This is not possible if the table is not empty.
  - Added the required column `osu_id` to the `TwitchAccount` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `TwitchOauth` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `DiscordOauth` table without a default value. This is not possible if the table is not empty.
  - Added the required column `lobby_id` to the `AutoHostRotatePlayer` table without a default value. This is not possible if the table is not empty.
  - Added the required column `mod_string` to the `ModMultiplier` table without a default value. This is not possible if the table is not empty.
  - Added the required column `map_identifier` to the `MapInMatch` table without a default value. This is not possible if the table is not empty.
  - Added the required column `match_id` to the `MapInMatch` table without a default value. This is not possible if the table is not empty.
  - Added the required column `pool_id` to the `MapInMatch` table without a default value. This is not possible if the table is not empty.
  - Added the required column `match_id` to the `TeamInMatch` table without a default value. This is not possible if the table is not empty.
  - Added the required column `team_id` to the `TeamInMatch` table without a default value. This is not possible if the table is not empty.
  - Added the required column `osu_id` to the `AutoHostRotate` table without a default value. This is not possible if the table is not empty.
  - Added the required column `match_id` to the `ScrimSettings` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `Mappool` table without a default value. This is not possible if the table is not empty.
  - Added the required column `osu_id` to the `UserInTeam` table without a default value. This is not possible if the table is not empty.
  - Added the required column `team_id` to the `UserInTeam` table without a default value. This is not possible if the table is not empty.
  - Added the required column `invitee_user_id` to the `TeamInvite` table without a default value. This is not possible if the table is not empty.
  - Added the required column `team_id` to the `TeamInvite` table without a default value. This is not possible if the table is not empty.
  - Added the required column `aim_difficulty` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `approach_rate` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `available` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `card_2x_url` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `card_url` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `circle_size` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `count_circles` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `count_sliders` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `count_spinners` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `cover_2x_url` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `cover_url` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `diff_mapper_user_id` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `difficulty_name` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `flashlight_difficulty` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `hp_drain` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `id` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `last_updated` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `list_2x_url` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `list_url` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `overall_difficulty` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `preview_url` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `set_mapper_user_id` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `slider_factor` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `slim_cover_2x_url` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `slim_cover_url` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `speed_difficulty` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `star_rating` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `status` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Added the required column `url` to the `Map` table without a default value. This is not possible if the table is not empty.
  - Made the column `artist` on table `Map` required. This step will fail if there are existing NULL values in that column.
  - Made the column `artist_unicode` on table `Map` required. This step will fail if there are existing NULL values in that column.
  - Made the column `beatmapset_id` on table `Map` required. This step will fail if there are existing NULL values in that column.
  - Made the column `bpm` on table `Map` required. This step will fail if there are existing NULL values in that column.
  - Made the column `hit_length` on table `Map` required. This step will fail if there are existing NULL values in that column.
  - Made the column `max_combo` on table `Map` required. This step will fail if there are existing NULL values in that column.
  - Made the column `title` on table `Map` required. This step will fail if there are existing NULL values in that column.
  - Made the column `title_unicode` on table `Map` required. This step will fail if there are existing NULL values in that column.
  - Made the column `total_length` on table `Map` required. This step will fail if there are existing NULL values in that column.
  - Added the required column `osu_id` to the `UserSession` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tournament_id` to the `Team` table without a default value. This is not possible if the table is not empty.
  - Added the required column `badge_id` to the `UserWithCustomBadge` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `UserWithCustomBadge` table without a default value. This is not possible if the table is not empty.
  - Added the required column `badge_id` to the `UserWithOsuBadge` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `UserWithOsuBadge` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tournament_id` to the `Round` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tournament_id` to the `UsersHostingTournament` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `UsersHostingTournament` table without a default value. This is not possible if the table is not empty.
  - Added the required column `mappool_id` to the `MapInPool` table without a default value. This is not possible if the table is not empty.
  - Added the required column `match_id` to the `TeamInQualifierMatch` table without a default value. This is not possible if the table is not empty.
  - Added the required column `team_id` to the `TeamInQualifierMatch` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX "QualifierRound_mappoolId_key";

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "QualifierRound";
PRAGMA foreign_keys=on;

-- CreateTable
CREATE TABLE "MappoolInRound" (
    "round_id" INTEGER NOT NULL,
    "mappool_id" INTEGER NOT NULL,

    PRIMARY KEY ("round_id", "mappool_id"),
    CONSTRAINT "MappoolInRound_round_id_fkey" FOREIGN KEY ("round_id") REFERENCES "Round" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "MappoolInRound_mappool_id_fkey" FOREIGN KEY ("mappool_id") REFERENCES "Mappool" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "_MappoolToRound" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL,
    CONSTRAINT "_MappoolToRound_A_fkey" FOREIGN KEY ("A") REFERENCES "Mappool" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "_MappoolToRound_B_fkey" FOREIGN KEY ("B") REFERENCES "Round" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "_MapToMappool" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL,
    CONSTRAINT "_MapToMappool_A_fkey" FOREIGN KEY ("A") REFERENCES "Map" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "_MapToMappool_B_fkey" FOREIGN KEY ("B") REFERENCES "Mappool" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);

-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_OsuOauth" (
    "user_id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "last_update" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "access_token" TEXT NOT NULL,
    "expires_in" INTEGER NOT NULL,
    "refresh_token" TEXT NOT NULL,
    "token_type" TEXT NOT NULL,
    CONSTRAINT "OsuOauth_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_OsuOauth" ("user_id", "access_token", "expires_in", "last_update", "refresh_token", "token_type") SELECT "userId", "access_token", "expires_in", "last_update", "refresh_token", "token_type" FROM "OsuOauth";
DROP TABLE "OsuOauth";
ALTER TABLE "new_OsuOauth" RENAME TO "OsuOauth";
CREATE TABLE "new_DiscordAccount" (
    "osu_id" INTEGER NOT NULL,
    "id" TEXT NOT NULL PRIMARY KEY,
    "avatar" TEXT NOT NULL,
    "discriminator" TEXT NOT NULL,
    "flags" INTEGER NOT NULL,
    "username" TEXT NOT NULL,
    CONSTRAINT "DiscordAccount_osu_id_fkey" FOREIGN KEY ("osu_id") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_DiscordAccount" ("osu_id", "avatar", "discriminator", "flags", "id", "username") SELECT "osuId", "avatar", "discriminator", "flags", "id", "username" FROM "DiscordAccount";
DROP TABLE "DiscordAccount";
ALTER TABLE "new_DiscordAccount" RENAME TO "DiscordAccount";
CREATE TABLE "new_TwitchAccount" (
    "osu_id" INTEGER NOT NULL,
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "username" TEXT NOT NULL,
    "requests_enabled" BOOLEAN NOT NULL DEFAULT false,
    "req_require_live" BOOLEAN NOT NULL DEFAULT false,
    "req_require_category" BOOLEAN NOT NULL DEFAULT false,
    CONSTRAINT "TwitchAccount_osu_id_fkey" FOREIGN KEY ("osu_id") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_TwitchAccount" ("osu_id", "id", "req_require_category", "req_require_live", "requests_enabled", "username") SELECT "osuId", "id", "req_require_category", "req_require_live", "requests_enabled", "username" FROM "TwitchAccount";
DROP TABLE "TwitchAccount";
ALTER TABLE "new_TwitchAccount" RENAME TO "TwitchAccount";
CREATE TABLE "new_TwitchOauth" (
    "user_id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "last_update" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "access_token" TEXT NOT NULL,
    "expires_at" BIGINT NOT NULL,
    "refresh_token" TEXT NOT NULL,
    "token_type" TEXT NOT NULL,
    CONSTRAINT "TwitchOauth_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "TwitchAccount" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_TwitchOauth" ("user_id", "access_token", "expires_at", "last_update", "refresh_token", "token_type") SELECT "userId", "access_token", "expires_at", "last_update", "refresh_token", "token_type" FROM "TwitchOauth";
DROP TABLE "TwitchOauth";
ALTER TABLE "new_TwitchOauth" RENAME TO "TwitchOauth";
CREATE TABLE "new_DiscordOauth" (
    "user_id" TEXT NOT NULL PRIMARY KEY,
    "last_update" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "access_token" TEXT NOT NULL,
    "expires_in" INTEGER NOT NULL,
    "refresh_token" TEXT NOT NULL,
    "token_type" TEXT NOT NULL,
    "scope" TEXT NOT NULL,
    CONSTRAINT "DiscordOauth_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "DiscordAccount" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_DiscordOauth" ("user_id", "access_token", "expires_in", "last_update", "refresh_token", "scope", "token_type") SELECT "userId", "access_token", "expires_in", "last_update", "refresh_token", "scope", "token_type" FROM "DiscordOauth";
DROP TABLE "DiscordOauth";
ALTER TABLE "new_DiscordOauth" RENAME TO "DiscordOauth";
CREATE TABLE "new_AutoHostRotatePlayer" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "username" TEXT NOT NULL,
    "rank" INTEGER NOT NULL,
    "lobby_id" INTEGER NOT NULL,
    CONSTRAINT "AutoHostRotatePlayer_lobby_id_fkey" FOREIGN KEY ("lobby_id") REFERENCES "AutoHostRotate" ("osu_id") ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO "new_AutoHostRotatePlayer" ("id", "rank", "username", "lobby_id") SELECT "id", "rank", "username", "lobbyId" FROM "AutoHostRotatePlayer";
DROP TABLE "AutoHostRotatePlayer";
ALTER TABLE "new_AutoHostRotatePlayer" RENAME TO "AutoHostRotatePlayer";
CREATE TABLE "new_ModMultiplier" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "tournament_id" INTEGER NOT NULL,
    "mod_string" TEXT NOT NULL,
    "match_exactly" BOOLEAN NOT NULL DEFAULT false,
    "multiplier" REAL NOT NULL,
    CONSTRAINT "ModMultiplier_tournament_id_fkey" FOREIGN KEY ("tournament_id") REFERENCES "Tournament" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_ModMultiplier" ("id", "multiplier", "tournament_id", "mod_string", "match_exactly") SELECT "id", "multiplier", "tournamentId", "modString", "matchExactly" FROM "ModMultiplier";
DROP TABLE "ModMultiplier";
ALTER TABLE "new_ModMultiplier" RENAME TO "ModMultiplier";
CREATE TABLE "new_MapInMatch" (
    "match_id" INTEGER NOT NULL,
    "map_identifier" TEXT NOT NULL,
    "pool_id" INTEGER NOT NULL,
    "banned_by_id" INTEGER,
    "picked_by_id" INTEGER,
    "pick_number" INTEGER,
    "pick_team_number" INTEGER,
    "won_by_id" INTEGER,

    PRIMARY KEY ("map_identifier", "match_id"),
    CONSTRAINT "MapInMatch_map_identifier_pool_id_fkey" FOREIGN KEY ("map_identifier", "pool_id") REFERENCES "MapInPool" ("identifier", "mappool_id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "MapInMatch_match_id_fkey" FOREIGN KEY ("match_id") REFERENCES "Match" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "MapInMatch_match_id_banned_by_id_fkey" FOREIGN KEY ("match_id", "banned_by_id") REFERENCES "TeamInMatch" ("match_id", "team_id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "MapInMatch_match_id_picked_by_id_fkey" FOREIGN KEY ("match_id", "picked_by_id") REFERENCES "TeamInMatch" ("match_id", "team_id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "MapInMatch_match_id_won_by_id_fkey" FOREIGN KEY ("match_id", "won_by_id") REFERENCES "TeamInMatch" ("match_id", "team_id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_MapInMatch" ("map_identifier", "match_id", "pool_id", "banned_by_id", "picked_by_id", "pick_number", "pick_team_number", "won_by_id") SELECT "mapIdentifier", "matchId", "poolId", "bannedByTeamId", "pickedByTeamId", "pickNumber", "pickTeamNumber", "wonByTeamId" FROM "MapInMatch";
DROP TABLE "MapInMatch";
ALTER TABLE "new_MapInMatch" RENAME TO "MapInMatch";
CREATE TABLE "new_TeamInMatch" (
    "match_id" INTEGER NOT NULL,
    "team_id" INTEGER NOT NULL,
    "score" INTEGER NOT NULL,
    "roll" INTEGER,
    "pick_order" INTEGER,
    "ban_order" INTEGER,
    "aborts" INTEGER NOT NULL DEFAULT 0,
    "faults" INTEGER NOT NULL DEFAULT 0,
    "warmed_up" BOOLEAN NOT NULL DEFAULT false,
    "winner" BOOLEAN,

    PRIMARY KEY ("team_id", "match_id"),
    CONSTRAINT "TeamInMatch_match_id_fkey" FOREIGN KEY ("match_id") REFERENCES "Match" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "TeamInMatch_team_id_fkey" FOREIGN KEY ("team_id") REFERENCES "Team" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO "new_TeamInMatch" ("team_id", "match_id", "aborts", "ban_order", "faults", "pick_order", "roll", "score", "warmed_up", "winner") SELECT "teamId", "matchId", "aborts", "ban_order", "faults", "pick_order", "roll", "score", "warmed_up", "winner" FROM "TeamInMatch";
DROP TABLE "TeamInMatch";
ALTER TABLE "new_TeamInMatch" RENAME TO "TeamInMatch";
CREATE TABLE "new_AutoHostRotate" (
    "osu_id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "mp_link" TEXT NOT NULL,
    "min_stars" REAL,
    "max_stars" REAL,
    "min_length" INTEGER,
    "max_length" INTEGER,
    "min_rank" INTEGER,
    "max_rank" INTEGER,
    "current_host_id" INTEGER,
    CONSTRAINT "AutoHostRotate_osu_id_fkey" FOREIGN KEY ("osu_id") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "AutoHostRotate_current_host_id_fkey" FOREIGN KEY ("current_host_id") REFERENCES "AutoHostRotatePlayer" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);
INSERT INTO "new_AutoHostRotate" ("osu_id", "max_length", "max_rank", "max_stars", "min_length", "min_rank", "min_stars", "mp_link", "current_host_id") SELECT "osuId", "max_length", "max_rank", "max_stars", "min_length", "min_rank", "min_stars", "mp_link", "current_host_id" FROM "AutoHostRotate";
DROP TABLE "AutoHostRotate";
ALTER TABLE "new_AutoHostRotate" RENAME TO "AutoHostRotate";
CREATE UNIQUE INDEX "AutoHostRotate_current_host_id_key" ON "AutoHostRotate"("current_host_id");
CREATE TABLE "new_ScrimSettings" (
    "match_id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "bans" INTEGER NOT NULL,
    "best_of" INTEGER NOT NULL,
    CONSTRAINT "ScrimSettings_match_id_fkey" FOREIGN KEY ("match_id") REFERENCES "Match" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_ScrimSettings" ("match_id", "bans", "best_of") SELECT "matchId", "bans", "best_of" FROM "ScrimSettings";
DROP TABLE "ScrimSettings";
ALTER TABLE "new_ScrimSettings" RENAME TO "ScrimSettings";
CREATE TABLE "new_Mappool" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL DEFAULT "New Mappool",
    "description" TEXT,
    "public" BOOLEAN NOT NULL DEFAULT false
);
INSERT INTO "new_Mappool" ("id", "public") SELECT "id", "global" FROM "Mappool";
DROP TABLE "Mappool";
ALTER TABLE "new_Mappool" RENAME TO "Mappool";
CREATE TABLE "new_Match" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "start_time" DATETIME,
    "message_id" TEXT,
    "channel_id" TEXT,
    "mp_link" TEXT,
    "waiting_on" INTEGER,
    "round_id" INTEGER,
    "state" INTEGER NOT NULL,
    "scrim" BOOLEAN NOT NULL DEFAULT false,
    CONSTRAINT "Match_round_id_fkey" FOREIGN KEY ("round_id") REFERENCES "Round" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);
INSERT INTO "new_Match" ("round_id", "channel_id", "id", "message_id", "mp_link", "scrim", "start_time", "state", "waiting_on") SELECT "roundId", "channel_id", "id", "message_id", "mp_link", "scrim", "start_time", "state", "waiting_on" FROM "Match";
DROP TABLE "Match";
ALTER TABLE "new_Match" RENAME TO "Match";
CREATE TABLE "new_UserInTeam" (
    "osu_id" INTEGER NOT NULL,
    "team_id" INTEGER NOT NULL,
    "member_order" INTEGER NOT NULL DEFAULT 0,
    "delete_warning" BOOLEAN,

    PRIMARY KEY ("osu_id", "team_id"),
    CONSTRAINT "UserInTeam_osu_id_fkey" FOREIGN KEY ("osu_id") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "UserInTeam_team_id_fkey" FOREIGN KEY ("team_id") REFERENCES "Team" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO "new_UserInTeam" ("osu_id", "team_id", "delete_warning", "member_order") SELECT "osuId", "teamId", "delete_warning", "member_order" FROM "UserInTeam";
DROP TABLE "UserInTeam";
ALTER TABLE "new_UserInTeam" RENAME TO "UserInTeam";
CREATE TABLE "new_TeamInvite" (
    "invitee_user_id" INTEGER NOT NULL,
    "team_id" INTEGER NOT NULL,

    PRIMARY KEY ("invitee_user_id", "team_id"),
    CONSTRAINT "TeamInvite_invitee_user_id_fkey" FOREIGN KEY ("invitee_user_id") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "TeamInvite_team_id_fkey" FOREIGN KEY ("team_id") REFERENCES "Team" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO "new_TeamInvite" ("invitee_user_id", "team_id") SELECT "inviteeUserId", "teamId" FROM "TeamInvite";
DROP TABLE "TeamInvite";
ALTER TABLE "new_TeamInvite" RENAME TO "TeamInvite";
CREATE TABLE "new_Tournament" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "acronym" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "color" TEXT NOT NULL,
    "banner_url" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "force_nf" BOOLEAN NOT NULL,
    "icon_url" TEXT NOT NULL,
    "score_mode" INTEGER NOT NULL,
    "team_mode" INTEGER NOT NULL,
    "team_size" INTEGER NOT NULL,
    "x_v_x_mode" INTEGER NOT NULL,
    "allow_registrations" BOOLEAN NOT NULL,
    "guild_id" TEXT,
    "delete_warning" BOOLEAN,
    "fm_mods" INTEGER NOT NULL DEFAULT 1,
    "double_pick" INTEGER NOT NULL DEFAULT 1,
    "double_ban" INTEGER NOT NULL DEFAULT 1,
    "private" BOOLEAN NOT NULL DEFAULT false,
    "twitch_account_id" INTEGER,
    CONSTRAINT "Tournament_guild_id_fkey" FOREIGN KEY ("guild_id") REFERENCES "Guild" ("guild_id") ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT "Tournament_twitch_account_id_fkey" FOREIGN KEY ("twitch_account_id") REFERENCES "TwitchAccount" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);
INSERT INTO "new_Tournament" ("guild_id", "twitch_account_id", "acronym", "allow_registrations", "banner_url", "color", "delete_warning", "description", "double_ban", "double_pick", "fm_mods", "force_nf", "icon_url", "id", "name", "private", "score_mode", "team_mode", "team_size", "x_v_x_mode") SELECT "Guild_id", "twitchAccountId", "acronym", "allow_registrations", "banner_url", "color", "delete_warning", "description", "double_ban", "double_pick", "fm_mods", "force_nf", "icon_url", "id", "name", "private", "score_mode", "team_mode", "team_size", "x_v_x_mode" FROM "Tournament";
DROP TABLE "Tournament";
ALTER TABLE "new_Tournament" RENAME TO "Tournament";
CREATE TABLE "new_Map" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "beatmapset_id" INTEGER NOT NULL,
    "star_rating" REAL NOT NULL,
    "status" TEXT NOT NULL,
    "total_length" INTEGER NOT NULL,
    "diff_mapper_user_id" INTEGER NOT NULL,
    "difficulty_name" TEXT NOT NULL,
    "max_combo" INTEGER NOT NULL,
    "aim_difficulty" REAL NOT NULL,
    "approach_rate" REAL NOT NULL,
    "flashlight_difficulty" REAL NOT NULL,
    "overall_difficulty" REAL NOT NULL,
    "slider_factor" REAL NOT NULL,
    "speed_difficulty" REAL NOT NULL,
    "bpm" REAL NOT NULL,
    "count_circles" INTEGER NOT NULL,
    "count_sliders" INTEGER NOT NULL,
    "count_spinners" INTEGER NOT NULL,
    "circle_size" REAL NOT NULL,
    "hp_drain" REAL NOT NULL,
    "hit_length" INTEGER NOT NULL,
    "last_updated" DATETIME NOT NULL,
    "url" TEXT NOT NULL,
    "artist" TEXT NOT NULL,
    "artist_unicode" TEXT NOT NULL,
    "cover_url" TEXT NOT NULL,
    "cover_2x_url" TEXT NOT NULL,
    "card_url" TEXT NOT NULL,
    "card_2x_url" TEXT NOT NULL,
    "list_url" TEXT NOT NULL,
    "list_2x_url" TEXT NOT NULL,
    "slim_cover_url" TEXT NOT NULL,
    "slim_cover_2x_url" TEXT NOT NULL,
    "preview_url" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "title_unicode" TEXT NOT NULL,
    "set_mapper_user_id" INTEGER NOT NULL,
    "available" BOOLEAN NOT NULL,
    "fetch_time" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
DROP TABLE "Map";
ALTER TABLE "new_Map" RENAME TO "Map";
CREATE TABLE "new_UserSession" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "osu_id" INTEGER NOT NULL,
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "last_used" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "device" TEXT,
    "browser" TEXT,
    "os" TEXT,
    CONSTRAINT "UserSession_osu_id_fkey" FOREIGN KEY ("osu_id") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_UserSession" ("osu_id", "created_at", "last_used", "browser", "device", "id", "os") SELECT "osuId", "createdAt", "lastUsed", "browser", "device", "id", "os" FROM "UserSession";
DROP TABLE "UserSession";
ALTER TABLE "new_UserSession" RENAME TO "UserSession";
CREATE TABLE "new_Team" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "icon_url" TEXT NOT NULL,
    "color" TEXT NOT NULL,
    "tournament_id" INTEGER NOT NULL,
    "scrim" BOOLEAN NOT NULL DEFAULT false,
    CONSTRAINT "Team_tournament_id_fkey" FOREIGN KEY ("tournament_id") REFERENCES "Tournament" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO "new_Team" ("color", "icon_url", "id", "name", "scrim", "tournament_id") SELECT "color", "icon_url", "id", "name", "scrim", "tournamentId" FROM "Team";
DROP TABLE "Team";
ALTER TABLE "new_Team" RENAME TO "Team";
CREATE TABLE "new_UserWithCustomBadge" (
    "user_id" INTEGER NOT NULL,
    "badge_id" INTEGER NOT NULL,

    PRIMARY KEY ("user_id", "badge_id"),
    CONSTRAINT "UserWithCustomBadge_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "UserWithCustomBadge_badge_id_fkey" FOREIGN KEY ("badge_id") REFERENCES "CustomBadge" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_UserWithCustomBadge" ("user_id", "badge_id") SELECT "userId", "badgeId" FROM "UserWithCustomBadge";
DROP TABLE "UserWithCustomBadge";
ALTER TABLE "new_UserWithCustomBadge" RENAME TO "UserWithCustomBadge";
CREATE TABLE "new_UserWithOsuBadge" (
    "user_id" INTEGER NOT NULL,
    "badge_id" INTEGER NOT NULL,

    PRIMARY KEY ("user_id", "badge_id"),
    CONSTRAINT "UserWithOsuBadge_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "UserWithOsuBadge_badge_id_fkey" FOREIGN KEY ("badge_id") REFERENCES "OsuBadge" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_UserWithOsuBadge" ("user_id", "badge_id") SELECT "userId", "badgeId" FROM "UserWithOsuBadge";
DROP TABLE "UserWithOsuBadge";
ALTER TABLE "new_UserWithOsuBadge" RENAME TO "UserWithOsuBadge";
CREATE TABLE "new_Round" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "acronym" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "is_qualifier" BOOLEAN NOT NULL DEFAULT false,
    "bans" INTEGER NOT NULL,
    "best_of" INTEGER NOT NULL,
    "delete_warning" TEXT,
    "tournament_id" INTEGER NOT NULL,
    CONSTRAINT "Round_tournament_id_fkey" FOREIGN KEY ("tournament_id") REFERENCES "Tournament" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO "new_Round" ("acronym", "bans", "best_of", "delete_warning", "id", "name", "tournament_id") SELECT "acronym", "bans", "best_of", "delete_warning", "id", "name", "tournamentId" FROM "Round";
DROP TABLE "Round";
ALTER TABLE "new_Round" RENAME TO "Round";
CREATE TABLE "new_UsersHostingTournament" (
    "user_id" INTEGER NOT NULL,
    "tournament_id" INTEGER NOT NULL,

    PRIMARY KEY ("user_id", "tournament_id"),
    CONSTRAINT "UsersHostingTournament_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "UsersHostingTournament_tournament_id_fkey" FOREIGN KEY ("tournament_id") REFERENCES "Tournament" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO "new_UsersHostingTournament" ("user_id", "tournament_id") SELECT "userId", "tourney" FROM "UsersHostingTournament";
DROP TABLE "UsersHostingTournament";
ALTER TABLE "new_UsersHostingTournament" RENAME TO "UsersHostingTournament";
CREATE TABLE "new_MapInPool" (
    "identifier" TEXT NOT NULL,
    "mods" TEXT NOT NULL,
    "map_id" INTEGER,
    "mod_priority" INTEGER NOT NULL DEFAULT 0,
    "mappool_id" INTEGER NOT NULL,

    PRIMARY KEY ("identifier", "mappool_id"),
    CONSTRAINT "MapInPool_map_id_fkey" FOREIGN KEY ("map_id") REFERENCES "Map" ("id") ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT "MapInPool_mappool_id_fkey" FOREIGN KEY ("mappool_id") REFERENCES "Mappool" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO "new_MapInPool" ("identifier", "mods", "map_id", "mod_priority", "mappool_id") SELECT "identifier", "mods", "mapId", "modPriority", "mappoolId" FROM "MapInPool";
DROP TABLE "MapInPool";
ALTER TABLE "new_MapInPool" RENAME TO "MapInPool";
CREATE TABLE "new_TeamInQualifierMatch" (
    "team_id" INTEGER NOT NULL,
    "match_id" INTEGER NOT NULL,

    PRIMARY KEY ("team_id", "match_id"),
    CONSTRAINT "TeamInQualifierMatch_team_id_fkey" FOREIGN KEY ("team_id") REFERENCES "Team" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "TeamInQualifierMatch_match_id_fkey" FOREIGN KEY ("match_id") REFERENCES "QualifierMatch" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
DROP TABLE "TeamInQualifierMatch";
ALTER TABLE "new_TeamInQualifierMatch" RENAME TO "TeamInQualifierMatch";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;

-- CreateIndex
CREATE UNIQUE INDEX "_MappoolToRound_AB_unique" ON "_MappoolToRound"("A", "B");

-- CreateIndex
CREATE INDEX "_MappoolToRound_B_index" ON "_MappoolToRound"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_MapToMappool_AB_unique" ON "_MapToMappool"("A", "B");

-- CreateIndex
CREATE INDEX "_MapToMappool_B_index" ON "_MapToMappool"("B");
