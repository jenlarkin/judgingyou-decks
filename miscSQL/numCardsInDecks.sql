select card_set.name, count(card_set_white_card.white_card_id) as numWhiteCards
from card_set join card_set_white_card on card_set.id = card_set_white_card.card_set_id
group by card_set.name


select card_set.name, count(card_set_black_card.black_card_id) as numBlackCards
from card_set join card_set_black_card on card_set.id = card_set_black_card.card_set_id
group by card_set.name