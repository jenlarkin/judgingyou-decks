-- Fix 'Viyda' typo in white deck

UPDATE white_cards
SET watermark = 'Vidya'
WHERE watermark = 'Viyda'