﻿SELECT 
  card_set.name, 
  card_set.base_deck, 
  card_set.id, 
  card_set.active, 
  card_set.description, 
  card_set.weight
FROM 
  public.card_set;