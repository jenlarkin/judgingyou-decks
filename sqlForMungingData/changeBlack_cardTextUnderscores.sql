alter table black_cards
add column card_text varchar;

update black_cards
set card_text = replace(card_text, '____', '[blank]');

update black_cards
set card_text = replace(card_text, '___', '[blank]');

update black_cards
set card_text = replace(card_text, '[blank]_', '[blank]');

update black_cards
set card_text = replace(card_text, '[blank]_', '[blank]');