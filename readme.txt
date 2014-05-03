repository with sql for setting up the tables and importing the data
https://github.com/ajanata/PretendYoureXyzzy

file to use for import:
cah_cards.sql

Install PostgreSQL
create a role named cah (case sensitive)
set cah user to have all permissions (create table, alter table, etc.)
create a database named pg_catalog (case sensitive)
open cah_cards.sql in database client and "execute script"
---

After import, run the following scripts to change the existing data
open addCard_setColumns.sql and execute query or script
open fixWatermarks.sql and execute query or script
open scrubData.sql and execute script (if you don't like these changes, run unscrubData.sql but exports will suck)
open setNewCard_setColumnData.sql and execute script

Now you can run the export scripts to export data. It is safe to export to csv, since scrubData.sql removed all commas:
getDecks.sql
getBlackCards.sql
getWhiteCards.sql


These format for the decks is not finalized and the scripts may be changed afterwards. Do not rely on the ordering in the scipts yet.
