drop trigger if exists trg_person_insert_audit on person;
drop trigger if exists trg_person_update_audit on person;
drop trigger if exists trg_person_delete_audit on person;
drop function if exists fnc_trg_person_insert_audit();
drop function if exists fnc_trg_person_update_audit();
drop function if exists fnc_trg_person_delete_audit();

create or replace function fnc_trg_person_audit()
    returns trigger as
    $$
        begin
            if (tg_op = 'INSERT') then
                insert into person_audit(row_id, name, age, gender, address)
                values (new.id, new.name, new.age, new.gender, new.address);
            elsif (tg_op = 'UPDATE') then
                insert into person_audit(type_event, row_id, name, age, gender, address)
                values ('U', old.id, old.name, old.age, old.gender, old.address);
            elsif (tg_op = 'DELETE') then
                insert into person_audit(type_event, row_id, name, age, gender, address)
                values ('D', old.id, old.name, old.age, old.gender, old.address);
            end if;
            return old;
        end;
    $$
    language plpgsql;

 create or replace trigger tg_person_audit
     after delete or insert or update
     on person
     for each row execute function
    fnc_trg_person_audit();

INSERT INTO person(id, name, age, gender, address) VALUES (10,'Damir', 22, 'male', 'Irkutsk'); UPDATE person SET name = 'Bulat' WHERE id = 10; UPDATE person SET name = 'Damir' WHERE id = 10; DELETE FROM person WHERE id = 10;
select * from person_audit