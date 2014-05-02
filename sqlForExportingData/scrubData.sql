 /*
IMPORTANT NOTES: 

1) since changes and additions to this file will replace characters with
HTML versions containing a hash (#), first replace all hashes. Nothing 
should be inserted to run before the hash replacements

2) for every change in this file, there needs to be a 
corresponding change in the unscrub script, which exists to help with 
testing. 
*/

/* Update black_cards to replace pound sign with HTML code for hash */
UPDATE black_cards
SET text = REPLACE(text, '#', '&#35;');

/* Update white_cards to replace pound sign with HTML code for hash */
UPDATE white_cards
SET text = REPLACE(text, '#', '&#35;');

/* Update card_set to replace pound sign with HTML code for hash */
UPDATE card_set
SET name = REPLACE(name, '#', '&#35;');

--------- Only add replacements below this line --------

/* Update black cards to replace commas with HTML code for commas */
UPDATE black_cards
SET text = REPLACE(text, ',', '&#44;');

/* Update white cards to replace commas with HTML code for commas */
UPDATE white_cards
SET text = REPLACE(text, ',', '&#44;');

/* Update black cards to replace apostrophe with HTML code for single quote */
UPDATE black_cards
SET text = REPLACE(text, '''', '&#39;');

/* Update white cards to replace apostrophe with HTML code for single quote */
UPDATE white_cards
SET text = REPLACE(text, '''', '&#39;');

/* Update card_set to replace apostrophe with HTML code for single quote */
UPDATE card_set
SET name = REPLACE(name, '''', '&#39;');

/* Update black cards to replace quotation mark with HTML code for double quote */
UPDATE black_cards
SET text = REPLACE(text, '"', '&#34;');

/* Update white cards to replace quotation mark with HTML code for double quote */
UPDATE white_cards
SET text = REPLACE(text, '"', '&#34;');

