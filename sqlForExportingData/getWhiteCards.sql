SELECT 
  white_cards.text AS card_text, 
  (  
  CASE WHEN LEFT(card_set.name, 3) = '[C]' 
	THEN RIGHT(card_set.name, (length(card_set.name) - 4))
	ELSE card_set.name
  END
  ) AS deck_name,  
  card_set.base_deck AS is_base_deck,
  card_set_white_card.card_set_id
FROM 
  card_set 
  INNER JOIN card_set_white_card ON card_set.id = card_set_white_card.card_set_id
  INNER JOIN white_cards ON card_set_white_card.white_card_id = white_cards.id
/*
WHERE 
  name = 'First Version'
*/