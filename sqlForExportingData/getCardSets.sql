SELECT 
  card_set.id,
  (  
  CASE WHEN LEFT(card_set.name, 3) = '[C]' 
	THEN RIGHT(card_set.name, (length(card_set.name) - 4))
	ELSE card_set.name
  END
  ) AS deck_name, 
  (  
  CASE WHEN LEFT(card_set.name, 3) = '[C]' 
	THEN 't'
	ELSE 'f'
  END
  )
  AS is_custom_deck,
  card_set.base_deck AS is_base_deck, 
  card_set.description, 
  (SELECT  watermark 
	FROM black_cards
	INNER JOIN card_set_black_card ON black_cards.id = card_set_black_card.black_card_id
	WHERE card_set_black_card.card_set_id = card_set.id
	LIMIT 1
  ) AS watermark,
  card_set.weight AS sort_weight
FROM 
  card_set
ORDER BY id
