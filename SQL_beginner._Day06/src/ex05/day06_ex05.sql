COMMENT ON TABLE person_discounts IS 'Personal discount of the client';
COMMENT ON COLUMN person_discounts.id IS 'Key for discounts cards';
COMMENT ON COLUMN person_discounts.person_id IS 'The key for identifying a person';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'The key for identifying a pizzeria';
COMMENT ON COLUMN person_discounts.discount IS 'Personal discount of a person';