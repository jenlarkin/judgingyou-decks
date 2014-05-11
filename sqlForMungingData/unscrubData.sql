 /*
IMPORTANT NOTES: 

1) since changes and additions to this file will replace characters with
HTML versions containing a hash (#), hashes should only be replaced as the 
final step, to ensure that previous steps complete successfully. If something
really needs to be added to the end of the file, the replace functions for hash
will need to be changed to regex_replace functions that get hashes that are 
not preceeded by an ampersand.

2) for every change in this file, there needs to be a 
corresponding change in the scrub script and vice versa.
*/

/* Undo black cards replace commas with HTML code for commas */
UPDATE black_cards
SET text = REPLACE(text, '&#44;', ',');

/* Undo white cards replace commas with HTML code for commas */
UPDATE white_cards
SET text = REPLACE(text, '&#44;', ',');

/* Undo card_set replace commas with HTML code for commas */
UPDATE card_set
SET name = REPLACE(name, '&#44;', ','),
description = REPLACE(description, '&#44;', ',');

/* Undo black cards replace apostrophe with HTML code for single quote */
UPDATE black_cards
SET text = REPLACE(text, '&#39;', '''');

/* Undo white cards replace apostrophe with HTML code for single quote */
UPDATE white_cards
SET text = REPLACE(text, '&#39;', '''');

/* Undo card_set replace apostrophe with HTML code for single quote */
UPDATE card_set
SET name = REPLACE(name, '&#39;', ''''),
description = REPLACE(description, '&#39;', '''');

/* Undo black cards replace quotation mark with HTML code for double quote */
UPDATE black_cards
SET text = REPLACE(text, '&#34;', '"');

/* Undo white cards replace quotation mark with HTML code for double quote */
UPDATE white_cards
SET text = REPLACE(text, '&#34;', '"');

/* Undo card_set replace apostrophe with HTML code for single quote */
UPDATE card_set
SET name = REPLACE(name, '&#34;', '"'),
description = REPLACE(description, '&#39;', '"');

-------- only add replacements above this line -----

/* Undo black_cards replace pound sign with HTML code for hash */
UPDATE black_cards
SET text = REPLACE(text, '&#35;', '#');

/* Undo white_cards replace pound sign with HTML code for hash */
UPDATE white_cards
SET text = REPLACE(text, '&#35;', '#');

/* Undo card_set replace pound sign with HTML code for hash */
UPDATE card_set
SET name = REPLACE(name, '&#35;', '#'),
description = REPLACE(description, '&#35;', '#');