set names utf8;
set foreign_key_checks = 0;

drop database if exists ecsite;
create database if not exists ecsite;
use ecsite;

drop table if exists login_user;
create table login_user(
id int not null primary key auto_increment,
login_id varchar(16)unique,
login_pass varchar(16),
user_name varchar(50),
insert_date datetime,
updated_date datetime
);

drop table if exists item_info;
create table item_info(
id int not null primary key auto_increment,
item_name varchar(30),
item_price int,
item_stock int,
insert_date datetime,
updated_date datetime
);

drop table if exists user_buy_item;
create table user_buy_item(
id int not null primary key auto_increment,
item_transaction_id int,
total_price int,
total_count int,
user_master_id varchar(16),
pay varchar(30)
);

insert into login_user(login_id,login_pass,user_name) values("internous","internous01","test");
insert into item_info(item_name,item_price,item_stock) values("noteBook",100,50);