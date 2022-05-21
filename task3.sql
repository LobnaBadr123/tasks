create database HR_Schema;
use HR_Schema;
create table monthly_trans
(
   indexed int not null   auto_increment,
   employee_id int not null,
   salary_id int not null,
   salary double not null,
   salary_date date not null,
   additional_commesions double,
   foreign key (employee_id) references employees(employee_id) on delete cascade,
   foreign key (salary_id) references salaries(salary_id) on delete cascade,
   key(indexed)
);


create table employees
(
  indexed int  not  null auto_increment,
  employee_id  int primary key,
  first_name varchar(100) not null,
  last_name varchar(100) not null ,
  age int not null,
  hiring_date date not null,
  key(indexed)
);


create table salaries 
(
    indexed int  not  null auto_increment,
    salary_id int primary key,
    salary double not null,
    bonus double,
    key(indexed)
);

insert into employees ( employee_id ,first_name ,last_name ,age,hiring_date) values
(1,'ahmed','ramy',20,'2020-5-5'),
(2,'mohamed','samy',21,'2020-6-5'),
(3,'khaled','salah',22,'2020-7-5'),
(4,'tareq','abdo',23,'2019-8-9'),
(5,'gamal','ali',24,'2018-10-11'),
(6,'hosam','badr',25,'2012-12-12'),
(7,'assem','basem',26,'2015-1-7'),
(8,'lila','atef',27,'2012-4-3'),
(9,'yara','mohamed',28,'2014-5-8'),
(10,'noha','ahmed',29,'2013-3-3');

update employees 
set 
   hiring_date = '2019-6-5'
where 
   employee_id =2;
   
update employees 
set 
   hiring_date = '2011-7-5'
where 
   employee_id =3;
   
   
   
insert into salaries (salary_id,salary,bonus) values
(1,2000,200),
(2,1000,100),
(3,3000,300),
(4,4000,400),
(5,5000,500),
(6,6000,600),
(7,7000,700),
(8,8500,850),
(9,8000,800),
(10,9000,900);

insert into monthly_trans (employee_id,salary_id,salary,salary_date,additional_commesions) values
(1,1,2000,'2020-1-1',200),
(2,2,1000,'2020-1-1',100);
insert into monthly_trans (employee_id,salary_id,salary,salary_date) values
(3,3,3000,'2020-1-1'),
(4,4,4000,'2020-1-1'),
(5,5,5000,'2020-1-1'),
(6,6,6000,'2020-1-1'),
(7,7,7000,'2020-1-1'),
(8,8,8500,'2020-1-1'),
(9,9,8000,'2020-1-1'),
(10,10,9000,'2020-1-1'),
(1,1,2000,'2020-2-1'),
(2,2,1000,'2020-2-1');
insert into monthly_trans (employee_id,salary_id,salary,salary_date,additional_commesions) values
(3,3,3000,'2020-2-1',300),
(4,4,4000,'2020-2-1',400);
insert into monthly_trans (employee_id,salary_id,salary,salary_date) values
(5,5,5000,'2020-2-1'),
(6,6,6000,'2020-2-1'),
(7,7,7000,'2020-2-1'),
(8,8,8500,'2020-2-1'),
(9,9,9000,'2020-2-1'),
(10,10,9000,'2020-2-1'),
(1,1,2000,"2020-3-1"),
(2,2,1000,"2020-3-1"),
(3,3,3000,"2020-3-1"),
(4,4,4000,"2020-3-1");
insert into monthly_trans (employee_id,salary_id,salary,salary_date,additional_commesions) values
(5,5,5000,"2020-3-1",500),
(6,6,6000,"2020-3-1",600);
insert into monthly_trans (employee_id,salary_id,salary,salary_date) values
(7,7,7000,"2020-3-1"),
(8,8,8500,"2020-3-1"),
(9,9,8000,"2020-3-1"),
(10,10,2000,"2020-3-1"),
(1,1,2000,'2020-4-1'),
(2,2,1000,'2020-4-1'),
(3,3,3000,'2020-4-1'),
(4,4,4000,'2020-4-1'),
(5,5,5000,'2020-4-1'),
(6,6,6000,'2020-4-1');
insert into monthly_trans (employee_id,salary_id,salary,salary_date,additional_commesions) values
(7,7,7000,'2020-4-1',700),
(8,8,8500,'2020-4-1',850);
insert into monthly_trans (employee_id,salary_id,salary,salary_date) values
(9,9,8000,'2020-4-1'),
(10,10,9000,'2020-4-1'),
(1,1,2000,'2020-5-1'),
(2,2,1000,'2020-5-1'),
(3,3,3000,'2020-5-1'),
(4,4,4000,'2020-5-1'),
(5,5,5000,'2020-5-1'),
(6,6,6000,'2020-5-1'),
(7,7,7000,'2020-5-1'),
(8,8,8500,'2020-5-1');
insert into monthly_trans (employee_id,salary_id,salary,salary_date,additional_commesions) values
(9,9,8000,'2020-5-1',800),
(10,10,9000,'2020-5-1',900),
(1,1,2000,"2020-6-1",200),
(2,2,1000,"2020-6-1",100);
insert into monthly_trans (employee_id,salary_id,salary,salary_date) values
(3,3,3000,"2020-6-1"),
(4,4,4000,"2020-6-1"),
(5,5,5000,"2020-6-1"),
(6,6,6000,"2020-6-1"),
(7,7,7000,"2020-6-1"),
(8,8,8500,"2020-6-1"),
(9,9,8000,"2020-6-1"),
(10,10,9000,"2020-6-1"),
(1,1,2000,'2020-7-1'),
(2,2,1000,'2020-7-1');
insert into monthly_trans (employee_id,salary_id,salary,salary_date,additional_commesions) values
(3,3,3000,'2020-7-1',300),
(4,4,4000,'2020-7-1',400);
insert into monthly_trans (employee_id,salary_id,salary,salary_date) values
(5,5,5000,'2020-7-1'),
(6,6,6000,'2020-7-1'),
(7,7,7000,'2020-7-1'),
(8,8,8500,'2020-7-1'),
(9,9,9000,'2020-7-1'),
(10,10,9000,'2020-7-1'),
(1,1,2000,"2020-8-1"),
(2,2,1000,"2020-8-1"),
(3,3,3000,"2020-8-1"),
(4,4,4000,"2020-8-1");
insert into monthly_trans (employee_id,salary_id,salary,salary_date,additional_commesions) values
(5,5,5000,"2020-8-1",500),
(6,6,6000,"2020-8-1",600);
insert into monthly_trans (employee_id,salary_id,salary,salary_date) values
(7,7,7000,"2020-8-1"),
(8,8,8500,"2020-8-1"),
(9,9,8000,"2020-8-1"),
(10,10,2000,"2020-8-1"),
(1,1,2000,'2020-9-1'),
(2,2,1000,'2020-9-1'),
(3,3,3000,'2020-9-1'),
(4,4,4000,'2020-9-1'),
(5,5,5000,'2020-9-1'),
(6,6,6000,'2020-9-1');
insert into monthly_trans (employee_id,salary_id,salary,salary_date,additional_commesions) values
(7,7,7000,'2020-9-1',700),
(8,8,8500,'2020-9-1',850);
insert into monthly_trans (employee_id,salary_id,salary,salary_date) values
(9,9,8000,'2020-9-1'),
(10,10,9000,'2020-9-1'),
(1,1,2000,'2020-10-1'),
(2,2,1000,'2020-10-1'),
(3,3,3000,'2020-10-1'),
(4,4,4000,'2020-10-1'),
(5,5,5000,'2020-10-1'),
(6,6,6000,'2020-10-1'),
(7,7,7000,'2020-10-1'),
(8,8,8500,'2020-10-1');
insert into monthly_trans (employee_id,salary_id,salary,salary_date,additional_commesions) values
(9,9,8000,'2020-10-1',800),
(10,10,9000,'2020-10-1',900);
insert into monthly_trans (employee_id,salary_id,salary,salary_date) values
(1,1,2000,'2020-11-1'),
(2,2,1000,'2020-11-1'),
(3,3,3000,'2020-11-1'),
(4,4,4000,'2020-11-1'),
(5,5,5000,'2020-11-1'),
(6,6,6000,'2020-11-1'),
(7,7,7000,'2020-11-1'),
(8,8,8500,'2020-11-1'),
(9,9,8000,'2020-11-1'),
(10,10,9000,'2020-11-1'),
(1,1,2000,'2020-12-1'),
(2,2,1000,'2020-12-1'),
(3,3,3000,'2020-12-1'),
(4,4,4000,'2020-12-1'),
(5,5,5000,'2020-12-1'),
(6,6,6000,'2020-12-1'),
(7,7,7000,'2020-12-1'),
(8,8,8500,'2020-12-1'),
(9,9,8000,'2020-12-1'),
(10,10,9000,'2020-12-1');






