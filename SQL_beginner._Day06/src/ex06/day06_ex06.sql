CREATE SEQUENCE seq_person_discounts START WITH 1;
ALTER TABLE person_discounts
    ALTER COLUMN id SET DEFAULT nextval('seq_person_discounts');
