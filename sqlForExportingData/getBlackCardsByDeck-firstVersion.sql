SELECT 
  black_cards.text, 
  black_cards.draw, 
  black_cards.pick, 
  black_cards.watermark, 
  card_set.name, 
  card_set.base_deck, 
  card_set_black_card.card_set_id
FROM 
  public.black_cards, 
  public.card_set, 
  public.card_set_black_card
WHERE 
  black_cards.id = card_set_black_card.black_card_id AND
  card_set_black_card.card_set_id = card_set.id AND
  name = 'First Version'