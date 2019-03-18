set names utf8;
set foreign_key_checks = 0;

drop database if exists ec;
create database if not exists ec;
use ec;

drop table if exists login_users;
create table login_users(
id int not null primary key auto_increment,
login_id varchar(16) unique,
login_pass varchar(16),
user_name varchar(50),
insert_date datetime,
update_date datetime
);

drop table if exists items;
create table items(
id int not null primary key auto_increment,
item_name varchar(30),
item_price int,
item_stock int,
insert_date datetime,
updated_date datetime
);

drop table if exists user_buy;
create table user_buy(
id int not null primary key auto_increment,
item_id int,
total_price int,
total_count int,
user_id varchar(16),
pay varchar(30),
insert_date datetime,
delete_date datetime
);

insert into login_users(login_id,login_pass,user_name) values("a","1","aa");
insert into items(item_name,item_price,item_stock) values("doll",1000,50);
