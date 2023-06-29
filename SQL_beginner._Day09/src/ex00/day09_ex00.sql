-- delete from person where id = 10 or id = 11;
-- drop table person_audit;

create table if not exists person_audit
( created timestamp with time zone NOT NULL DEFAULT NOW(),
  type_event char(1) default 'I' not null,
  row_id bigint not null,
  name varchar not null,
  age integer not null default 10,
  gender varchar default 'female' not null ,
  address varchar
constraint ch_type_event CHECK (type_event IN ('I', 'U', 'D'))
);
-- создание функции с заменой
create or replace function fnc_trg_person_insert_audit()
    returns trigger as
    $$
        begin
            insert into person_audit(row_id, name, age, gender, address)
         values (new.id, new.name, new.age, new.gender, new.address);
         return new;
        end;
    $$
    language plpgsql;

 create or replace trigger trg_person_insert_audit
     after insert on person
     for each row execute function
     fnc_trg_person_insert_audit();


INSERT INTO person(id, name, age, gender, address) VALUES (10,'Damir', 22, 'male', 'Irkutsk');

select * from person_audit;
