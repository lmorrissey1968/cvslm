--create database if not exists flagco_flagcodev;
--use flagco_flagco;
use flagpole_flagpole;

drop table if exists model_category_attribute;
drop table if exists item_attribute;
drop table if exists category_attribute;
drop table if exists catalog;
drop table if exists category;
drop table if exists attribute;

create table category
(
	category_cd			integer unsigned not null auto_increment,
	category_desc		varchar(40) not null default '<category description>',
	table_design_cd		integer unsigned,
--	update_ts			timestamp(14) on update now(),
	primary key(category_cd)
);

create table attribute
(
	attribute_cd		integer unsigned not null auto_increment,
	attribute_desc		varchar(40) not null default '<attribute description>',
--	update_ts			timestamp(14) on update now(),
	primary key(attribute_cd)
);

create table category_attribute
(
	category_cd			integer unsigned not null,
	attribute_cd		integer unsigned not null,
--	update_ts			timestamp(14) on update now(),
--	foreign key(category_cd) references category(category_cd)on delete cascade,
--	foreign key(attribute_cd) references attribute(attribute_cd)on delete cascade,
	primary key(category_cd,attribute_cd)
);

create table catalog
(
	itemno			varchar(8) not null default '',
	model			varchar(50) not null default '',
	description		varchar(150) not null default '',
	price			decimal(8,2) not null default '0.00',
	weight			decimal(8,3) not null default '0.000',
	shipok			tinyint(4) not null default '0',
	shipadd			int(4) not null default '0',
	boxes			int(11) not null default '0',
	category_cd		integer unsigned,
--	update_ts		timestamp(14) on update now(),
--	foreign key(category_cd) references category(category_cd),
	primary key(itemno)
);

create table item_attribute
(
	itemno				varchar(8) not null default '',
	attribute_cd		integer unsigned not null,
	attribute_value 	varchar(40) not null,
--	update_ts			timestamp(14) on update now(),
--	foreign key(itemno) references catalog(itemno)on delete cascade,
--	foreign key(attribute_cd) references attribute(attribute_cd)on delete cascade,
	primary key(itemno,attribute_cd)
);

create table model_category_attribute
(
	model				varchar(50) not null default '',
	category_cd			integer unsigned,
	attribute_cd		integer unsigned not null,
	attribute_value 	varchar(40) not null,
--	update_ts			timestamp(14) on update now(),
--	foreign key(attribute_cd) references attribute(attribute_cd)on delete cascade,
--	foreign key(model,category_cd) references catalog(model,category_cd)on delete cascade,
	primary key(model,category_cd,attribute_cd)
);