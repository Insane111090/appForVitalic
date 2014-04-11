create or replace trigger trg_currency_insert  
   before insert on CURRENCY
   for each row 
begin  
   if inserting then 
      if :NEW.CURRENCY_ID is null then 
         select CURRENCY_SEQ.nextval into :NEW.CURRENCY_ID from dual; 
      end if; 
   end if; 
end;
/
create or replace trigger trg_date_info_insert
  before insert on date_info
  for each row
begin
if inserting then
  if :new.date_id is null then
    select date_seq.nextval into :new.date_id from dual;
  end if;
end if;
end;
/
