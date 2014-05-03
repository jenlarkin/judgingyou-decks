SELECT  
  white_cards.id as card_id,
  card_set_white_card.card_set_id as deck_id,
  card_set.name AS deck_name,
  card_set.deck_code,  
  card_set.watermark,
  card_set.is_custom_deck,
  white_cards.text AS card_text
FROM 
  card_set 
  INNER JOIN card_set_white_card ON card_set.id = card_set_white_card.card_set_id
  INNER JOIN white_cards ON card_set_white_card.white_card_id = white_cards.id
  

WHERE 
  name = 'First Version'


ORDER BY deck_name, card_id