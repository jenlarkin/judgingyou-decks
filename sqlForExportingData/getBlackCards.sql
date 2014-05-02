SELECT 
  black_cards.text AS card_text, 
  black_cards.draw AS draw_before, 
  black_cards.pick AS number_to_play,  
  (  
  CASE WHEN LEFT(card_set.name, 3) = '[C]' 
	THEN RIGHT(card_set.name, (length(card_set.name) - 4))
	ELSE card_set.name
  END
  ) AS deck_name, 
  card_set.base_deck AS is_base_deck, 
  card_set_black_card.card_set_id
FROM 
  black_cards 
  INNER JOIN card_set_black_card ON black_cards.id = black_card_id 
  INNER JOIN card_set ON card_set.id = card_set_black_card.card_set_id

  /*
WHERE 
  name = 'First Version'
  */