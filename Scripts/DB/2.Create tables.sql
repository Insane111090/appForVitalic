create table currency(
currency_id number(20) not null,
currency_name varchar2(200) not null,
start_time timestamp not null,
end_time timestamp not null,
constraint currency_pk primary key(currency_id));

create table currency_info(
currency_id number(20) not null,
open_price varchar2(20),
close_price varchar2(20),
constraint fk_currency_info
foreign key(currency_id)
references currency (currency_id));