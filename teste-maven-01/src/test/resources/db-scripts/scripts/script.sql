--liquibase formatted sql

--changeset paulo: 1

drop table if exists product; 
create table product(
	id bigint(20) unsigned not null auto_increment, 
	name varchar(100) not null, 
	descriptions varchar(200) not null, 
	price double(10,2) not null, 
	primary key(id)
); 

--rollback drop table product; 

--charset paulo:2 

insert into product values (1,'Celular','Asus Zenfone 2', 1.300);

--roll back delete from product where id = 1; 