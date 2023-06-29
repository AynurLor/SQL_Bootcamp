create view v_persons_female (id, name, age, gender, address)
as (select * from person where gender = 'female');

create view v_persons_male (id, name, age, gender, address)
as (select * from person where gender = 'male');
