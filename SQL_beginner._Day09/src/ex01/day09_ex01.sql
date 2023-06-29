-- delete from person where id = 10 or id = 11;
-- drop table person_audit;

-- create table if not exists person_audit
-- ( created timestamp with time zone NOT NULL default now(),
--   type_event char(1) default 'I' not null,
--   row_id bigint not null,
--   name varchar not null,
--   age integer not null default 10,
--   gender varchar default 'female' not null ,
--   address varchar
-- constraint ch_type_event CHECK (type_event IN ('I', 'U', 'D'))
-- );
-- создание функции с заменой
create or replace function fnc_trg_person_update_audit()
    returns trigger as
    $$
        begin
            insert into person_audit(type_event, row_id, name, age, gender, address)
         values ('U', old.id, old.name, old.age, old.gender, old.address);
         return old;
        end;
    $$
    language plpgsql;

 create or replace trigger trg_person_update_audit
     after update on person
     for each row execute function
    fnc_trg_person_update_audit();


UPDATE person SET name = 'Bulat' WHERE id = 10; UPDATE person SET name = 'Damir' WHERE id = 10;

