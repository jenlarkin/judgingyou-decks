﻿-- Set is_custom_deck in card_set

UPDATE card_set
SET is_custom_deck = 'f'
WHERE name NOT LIKE '[C]%'

-- Remove [C] from card_set.name

UPDATE card_set
SET name =
(  
  CASE WHEN LEFT(card_set.name, 3) = '[C]' 
	THEN RIGHT(card_set.name, (length(card_set.name) - 4))
	ELSE card_set.name
  END
  )

/* Set deck_code and correct watermarks. Sadly, since a card can be 
in multiple decks and the watermark is on the card, there's a risk that 
the top 1 card selected in a query would have another deck's watermark.
Admin Picks cards all have the wrong watermark. */

UPDATE card_set
SET DECK_CODE = 'CAHMAIN1',
WATERMARK = 'CAH'
WHERE id = 1151;

UPDATE card_set
SET DECK_CODE = 'CAHMAIN2',
WATERMARK = 'CAH'
WHERE id = 1152;

UPDATE card_set
SET DECK_CODE = 'CAHCANADA',
WATERMARK = 'CAN'
WHERE id = 1153;

UPDATE card_set
SET DECK_CODE = 'CAHMISPRNT',
WATERMARK = 'MIS'
WHERE id = 1154;

UPDATE card_set
SET DECK_CODE = 'CAHEX1',
WATERMARK = 'X1'
WHERE id = 1155;

UPDATE card_set
SET DECK_CODE = 'CAHEX2',
WATERMARK = 'X2'
WHERE id = 1256;

UPDATE card_set
SET DECK_CODE = 'CAHXMAS12',
WATERMARK = 'XM12'
WHERE id = 1488;

UPDATE card_set
SET DECK_CODE = 'CAEQUINE',
WATERMARK = 'CAE'
WHERE id = 100001;

UPDATE card_set
SET DECK_CODE = 'VERYSRS',
WATERMARK = 'VS'
WHERE id = 100002;


UPDATE card_set
SET DECK_CODE = 'ADMINPICKS',
WATERMARK = 'ADM'
WHERE id = 100003;

UPDATE card_set
SET DECK_CODE = 'SOCLGAMER',
WATERMARK = 'SG'
WHERE id = 100017;

UPDATE card_set
SET DECK_CODE = 'PAX2013A',
WATERMARK = 'PAX A'
WHERE id = 100049;

UPDATE card_set
SET DECK_CODE = 'PAX2013B',
WATERMARK = 'PAX B'
WHERE id = 100050;

UPDATE card_set
SET DECK_CODE = 'PAX2013C',
WATERMARK = 'PAX C'
WHERE id = 100051;

UPDATE card_set
SET DECK_CODE = 'CAHEX3',
WATERMARK = 'X3'
WHERE id = 100154;

UPDATE card_set
SET DECK_CODE = 'NORTHLION',
WATERMARK = 'NL'
WHERE id = 100157;

UPDATE card_set
SET DECK_CODE = 'RIDICSTUP',
WATERMARK = 'RS'
WHERE id = 100160;

UPDATE card_set
SET DECK_CODE = 'GUYWGLASS',
WATERMARK = 'TGWTG'
WHERE id = 100161;

UPDATE card_set
SET DECK_CODE = 'CAHMAIN3',
WATERMARK = 'CAH'
WHERE id = 100211;

UPDATE card_set
SET DECK_CODE = 'GOLBYFAN',
WATERMARK = 'GFC'
WHERE id = 100219;

UPDATE card_set
SET DECK_CODE = 'ANIME',
WATERMARK = 'AN'
WHERE id = 100224;

UPDATE card_set
SET DECK_CODE = 'MRMAN',
WATERMARK = 'MrMan'
WHERE id = 100225;

UPDATE card_set
SET DECK_CODE = 'SODOMFURRY',
WATERMARK = 'Furry'
WHERE id = 100228;

UPDATE card_set
SET DECK_CODE = 'VIDYA',
WATERMARK = 'Vidya'
WHERE id = 100229;

UPDATE card_set
SET DECK_CODE = 'GAMEGRUMP',
WATERMARK = 'GG'
WHERE id = 100231;

UPDATE card_set
SET DECK_CODE = 'ROOSTRTEEF',
WATERMARK = 'RT'
WHERE id = 100232;

UPDATE card_set
SET DECK_CODE = 'DERPSAH',
WATERMARK = 'DAH'
WHERE id = 100233;

UPDATE card_set
SET DECK_CODE = 'ANIMEEX1',
WATERMARK = 'ANX1'
WHERE id = 100234;

UPDATE card_set
SET DECK_CODE = 'ANTISOCIAL',
WATERMARK = 'AI'
WHERE id = 100236;

UPDATE card_set
SET DECK_CODE = 'CAHBOX',
WATERMARK = 'BOX'
WHERE id = 100257;

UPDATE card_set
SET DECK_CODE = 'PAX2013',
WATERMARK = 'PAX13'
WHERE id = 100312;

UPDATE card_set
SET DECK_CODE = 'CAHEX4',
WATERMARK = 'X4'
WHERE id = 100415;

UPDATE card_set
SET DECK_CODE = 'CAHXMAS13',
WATERMARK = 'HBS'
WHERE id = 100422;

UPDATE card_set
SET DECK_CODE = 'IMGUR',
WATERMARK = 'Imgur'
WHERE id = 100443;

UPDATE card_set
SET DECK_CODE = 'FIMFICT',
WATERMARK = 'FiM1'
WHERE id = 100444;

UPDATE card_set
SET DECK_CODE = 'TRADGAME',
WATERMARK = '/tg/'
WHERE id = 100445;

UPDATE card_set
SET DECK_CODE = 'XKCD',
WATERMARK = 'xkcd'
WHERE id = 100446;

UPDATE card_set
SET DECK_CODE = 'RAGEPSYFAG',
WATERMARK = 'RPF'
WHERE id = 100447;

UPDATE card_set
SET DECK_CODE = 'HOMESTUCK',
WATERMARK = 'MSPA'
WHERE id = 100448;

UPDATE card_set
SET DECK_CODE = 'DRWHO',
WATERMARK = 'DW'
WHERE id = 100449;

UPDATE card_set
SET DECK_CODE = 'KHAOS',
WATERMARK = 'KHAOS'
WHERE id = 100450;

UPDATE card_set
SET DECK_CODE = 'RPANONS',
WATERMARK = 'RP'
WHERE id = 100451;

UPDATE card_set
SET DECK_CODE = 'EUROVISION',
WATERMARK = 'ESC'
WHERE id = 100452;

UPDATE card_set
SET DECK_CODE = 'CAHPOLISH',
WATERMARK = 'CAHP'
WHERE id = 100453;

UPDATE card_set
SET DECK_CODE = 'HOUSEOFCAH',
WATERMARK = 'HOCAH'
WHERE id = 100485;
