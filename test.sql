use test;

/*create table user(
	id int auto_increment primary key,
	username varchar(50) not null,
	password varchar(50) not null,
	createtime datetime
);
*/

/*create table logtime(
	id int primary key auto_increment,
	save datetime not null
);*/

/*insert*/
insert into table_name(column...) values() where ...;

/*update*/
update table_name set column=value where ...;

/*delete*/
delete from table_name where ...;

/*添加新列*/
alter table table_name add column column_name datatype constraint_key;

/*删除列*/
alter table table_name drop column column_name;

/*改变列的数据类型*/
alter table table_name modify column column_name datatype;

/*添加UNIQUE约束*/
alter table table_name add constraint constraint_name unique(column1,column2...);

/*添加CHECK约束*/
alter table table_name add constraint constraint_name check(condition)

/*添加主键*/
alter table table_name drop primary key,add primary key(column1,column2...);

/*删除约束*/
alter table table_name dorp constraint constraint_name;

/*修改表名*/
alter table table_name rename table_new_name;

/*修改列名*/
alter table table_name change column column_name column_new_name datatype;

/*添加索引*/
alter table table_name add index index_name(column1,column2...);
/*或者*/
create index index_name on table_name(column1,column2...);

/*创建视图*/
create view view_name as select ... from ... where ... whith check option;
/*删除视图*/	
drop view view_name;

/*事务*/
set autocommit=0;
begin;
	....
savepoint savepiont_name;

rollback;
commit;
