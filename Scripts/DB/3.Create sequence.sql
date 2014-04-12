drop sequence currency_seq;
/
drop sequence date_seq;
/
create sequence currency_seq
start with 1
increment by 1
minvalue 1
nocache
nocycle;
/
create sequence date_seq
start with 1
increment by 1
minvalue 1
nocache
nocycle;