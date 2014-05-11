SELECT card_set.name, white_cards.id,
white_cards.text
FROM white_cards 
INNER JOIN card_set_white_card ON white_cards.id = card_set_white_card.white_card_id
INNER JOIN card_set ON card_set.id = card_set_white_card.card_set_id
WHERE white_cards.id IN
(SELECT white_cards.id  
FROM white_cards
INNER JOIN card_set_white_card ON white_cards.id = card_set_white_card.white_card_id
GROUP BY id
HAVING COUNT(id) > 1)
ORDER BY text, name