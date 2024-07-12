/*
  Warnings:

  - You are about to drop the column `accors_at` on the `activities` table. All the data in the column will be lost.
  - You are about to drop the column `is_comfirmed` on the `trips` table. All the data in the column will be lost.
  - Added the required column `occurs_at` to the `activities` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_activities" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "title" TEXT NOT NULL,
    "occurs_at" DATETIME NOT NULL,
    "trip_id" TEXT NOT NULL,
    CONSTRAINT "activities_trip_id_fkey" FOREIGN KEY ("trip_id") REFERENCES "trips" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_activities" ("id", "title", "trip_id") SELECT "id", "title", "trip_id" FROM "activities";
DROP TABLE "activities";
ALTER TABLE "new_activities" RENAME TO "activities";
CREATE TABLE "new_trips" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "destination" TEXT NOT NULL,
    "starts_at" DATETIME NOT NULL,
    "ends_at" DATETIME NOT NULL,
    "is_confirmed" BOOLEAN NOT NULL DEFAULT false,
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO "new_trips" ("created_at", "destination", "ends_at", "id", "starts_at") SELECT "created_at", "destination", "ends_at", "id", "starts_at" FROM "trips";
DROP TABLE "trips";
ALTER TABLE "new_trips" RENAME TO "trips";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
