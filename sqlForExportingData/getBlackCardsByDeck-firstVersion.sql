SELECT 
  card_set.watermark,
  card_set.is_custom_deck, 
  black_cards.draw AS draw_before, 
  black_cards.pick AS number_to_play, 
  black_cards.text AS card_text
FROM 
  black_cards 
  INNER JOIN card_set_black_card ON black_cards.id = black_card_id 
  INNER JOIN card_set ON card_set.id = card_set_black_card.card_set_id

  
WHERE 
  name = 'First Version'
  

ORDER BY watermark, text