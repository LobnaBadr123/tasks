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