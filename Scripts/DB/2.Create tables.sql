drop table currency_ask;
/
drop table currency_bid;
/
drop table currency;
/
drop table date_info;
/
create table currency
(currency_id number(20) not null,
currency_name varchar2(200) ,
constraint pk_currency_id primary key (currency_id));
/
create table date_info
(date_id number(20) not null,
start_time timestamp not null,
end_time timestamp not null,
constraint pk_date_id primary key (date_id));
/
create table currency_ask
(currency_id number(20) not null,
date_id number(20) not null,
open_price varchar2(20) not null,
close_price varchar2(20) not null,
constraint fk_date_ask foreign key (date_id)
references date_info(date_id) on delete cascade,
constraint fk_currency_ask foreign key (currency_id)
references currency(currency_id)on delete cascade);
/
create table currency_bid
(currency_id number(20) not null,
date_id number(20) not null,
open_price varchar2(20) not null,
close_price varchar2(20) not null,
constraint fk_date_bid foreign key (date_id)
references date_info(date_id) on delete cascade,
constraint fk_currency_bid foreign key (currency_id)
references currency(currency_id)on delete cascade);
/
create index date_index_bid
on currency_bid(date_id);
/
create index date_index_ask
on currency_ask(date_id);
/
create index currency_index_bid
on currency_bid(currency_id);
/
create index currency_index_ask
on currency_ask(currency_id);

