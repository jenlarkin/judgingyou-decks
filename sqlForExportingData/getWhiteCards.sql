SELECT 
  white_cards.text, 
  white_cards.watermark, 
  card_set_white_card.card_set_id, 
  card_set.name, 
  card_set.base_deck
FROM 
  public.card_set, 
  public.card_set_white_card, 
  public.white_cards
WHERE 
  card_set.id = card_set_white_card.card_set_id AND
  card_set_white_card.white_card_id = white_cards.id;
