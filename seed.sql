CREATE TABLE departments (
dept_id INT NOT NULL PRIMARY KEY,
dept_name VARCHAR(55) NOT NULL
);

INSERT INTO departments (dept_id, dept_name) VALUES (1, 'Administration');
INSERT INTO departments (dept_id,dept_name) VALUES (2,'Customer Service');
INSERT INTO departments (dept_id,dept_name) VALUES (3,'Finance');
INSERT INTO departments (dept_id,dept_name) VALUES (4,'Human Resources');
INSERT INTO departments (dept_id,dept_name) VALUES (5,'Sales');



CREATE TABLE employees (
    emp_id INT NOT NULL PRIMARY KEY,
    emp_name VARCHAR(55) NOT NULL,
    hire_date DATE NOT NULL,
    salary INT,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO employees (emp_id, emp_name, hire_date, salary, dept_id) VALUES (1, 'Ethan Hunt', '2001-05-01', 5000, 4);
INSERT INTO employees (emp_id, emp_name, hire_date, salary, dept_id) VALUES (2, 'Tony Montana', '2002-07-15', 6500, 1);
INSERT INTO employees (emp_id, emp_name, hire_date, salary, dept_id) VALUES (3, 'Sarah Ann Connor', '2005-10-18', 8000, 5);
INSERT INTO employees (emp_id, emp_name, hire_date, salary, dept_id) VALUES (4, 'Rick Deckard', '2007-01-03', 7200, 3);
INSERT INTO employees (emp_id, emp_name, hire_date, salary) VALUES (5, 'Martin Blank', '2008-06-24', 5600);


create table dept(  
  deptno     int not null primary key,  
  dname      varchar(14),  
  loc        varchar(13) 
);

create table emp(  
  empno    int not null primary key,  
  ename    varchar(10),  
  job      varchar(9),  
  mgr      int,  
  hiredate date,  
  sal      real,  
  comm     real,  
  deptno   int,  
  foreign key (deptno) references dept (deptno)  
);

create table faux(  
  empno    int not null primary key,  
  ename    varchar(10),  
  job      varchar(9),  
  mgr      int,  
  hiredate date,  
  sal      real,  
  comm     real,  
  deptno   int,  
  foreign key (deptno) references dept (deptno)  
);

insert into DEPT (DEPTNO, DNAME, LOC) values(10, 'ACCOUNTING', 'NEW YORK');
insert into dept  values(20, 'RESEARCH', 'DALLAS');
insert into dept  values(30, 'SALES', 'CHICAGO');
insert into dept  values(40, 'OPERATIONS', 'BOSTON');

insert into emp  values(  7839, 'KING', 'PRESIDENT', null,  TO_DATE('17-11-1981','DD-MM-YYYY'),  5000, null, 10);
insert into emp  values(  7698, 'BLAKE', 'MANAGER', 7839,  TO_DATE('1-5-1981','DD-MM-YYYY'), 2850, null, 30 );
insert into emp  values( 7782, 'CLARK', 'MANAGER', 7839, TO_DATE('9-6-1981','DD-MM-YYYY'), 2450, null, 10 );
insert into emp  values( 7566, 'JONES', 'MANAGER', 7839, TO_DATE('2-4-1981','DD-MM-YYYY'), 2975, null, 20 );
insert into emp  values( 7788, 'SCOTT', 'ANALYST', 7566, TO_DATE('13-JUL-87','DD-MON-YY'),  3000, null, 20);
insert into emp  values( 7902, 'FORD', 'ANALYST', 7566, TO_DATE('3-12-1981','DD-MM-YYYY'), 3000, null, 20 );
insert into emp  values(  7369, 'SMITH', 'CLERK', 7902, TO_DATE('17-12-1980','DD-MM-YYYY'), 800, null, 20 );
insert into emp  values(  7499, 'ALLEN', 'SALESMAN', 7698,  TO_DATE('20-2-1981','DD-MM-YYYY'),  1600, 300, 30 );
insert into emp  values(  7521, 'WARD', 'SALESMAN', 7698, TO_DATE('22-2-1981','DD-MM-YYYY'), 1250, 500, 30 );
insert into emp  values(  7654, 'MARTIN', 'SALESMAN', 7698,  TO_DATE('28-9-1981','DD-MM-YYYY'), 1250, 1400, 30 );
insert into emp  values(  7844, 'TURNER', 'SALESMAN', 7698, TO_DATE('8-9-1981','DD-MM-YYYY'), 1500, 0, 30 );
insert into emp  values(  7876, 'ADAMS', 'CLERK', 7788,  TO_DATE('13-JUL-87','DD-MON-YY'),  1100, null, 20 );
insert into emp values(  7900, 'JAMES', 'CLERK', 7698,  TO_DATE('3-12-1981','DD-MM-YYYY'),  950, null, 30  );
insert into emp  values(  7934, 'MILLER', 'CLERK', 7782,  TO_DATE('23-1-1982','DD-MM-YYYY'),  1300, null, 10  );

create table item(
item_id int not null primary key,
item_name varchar(100));

create table orders(
order_id int not null primary key,
order_status varchar(100));

create table item_orders(
item_id int not null,
order_id int not null,
primary key(item_id,order_id),
FOREIGN KEY (item_id) REFERENCES item(item_id),
FOREIGN KEY (order_id) REFERENCES orders(order_id));

insert into item values (1, 'chocolate');
insert into item values (2, 'wine');
insert into item values (3, 'cheese');
insert into item values (4, 'burger');
insert into item values (5, 'pizza');
insert into item values (6, 'pasta');

insert into orders values(1, 'complete');
insert into orders values(2, 'in-progress');

insert into  item_orders values(1,1);
insert into  item_orders values(2,1);
insert into  item_orders values(3,1);
insert into  item_orders values(4,2);
insert into  item_orders values(5,2);
insert into  item_orders values(6,2);
insert into  item_orders values(1,2);

select item_name, item_orders.order_id, order_status 
from item_orders 
inner join  item on item_orders.item_id=item.item_id
inner join orders on item_orders.order_id=orders.order_id;


