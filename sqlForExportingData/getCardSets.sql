SELECT 
  card_set.name AS deck_name,
  deck_code,
  card_set.watermark, 
  is_custom_deck,
  active AS is_active,
  card_set.base_deck AS is_base_deck, 
  card_set.weight AS sort_weight,
  description
FROM 
  card_set
ORDER BY id
