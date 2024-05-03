create table hospital_branch(
branch_no number,
location char(60),
contact_no number,
email varchar(40),
PRIMARY KEY(branch_no));

create table department(
dept_id number,
dept_name varchar(30),
total_doc number,
dept_head char(60),
branch_no number,
PRIMARY KEY(dept_id),
FOREIGN KEY(branch_no) REFERENCES hospital_branch);

create table physician(
doc_code number,
doc_name varchar(30),
dept_id number,
designation char(60),
contact_no number,
PRIMARY KEY(doc_code),
FOREIGN KEY(dept_id) REFERENCES department);

create table patient(
p_id number,
p_name varchar(30),
gender char(20),
age number,
weight number,
PRIMARY KEY(p_id));

CREATE TABLE nurse (
    nurse_id INT PRIMARY KEY,
    nurse_name VARCHAR(100),
    dept_id INT,
    yr_of_exp INT,
    contact_no VARCHAR(15),
    email VARCHAR(100),
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);


create table appointment(
app_si number,
app_date varchar(40),
app_time varchar(20),
p_id number,
doc_code number,
PRIMARY KEY(app_si),
FOREIGN KEY(doc_code) REFERENCES physician,
FOREIGN KEY(p_id) REFERENCES patient);

insert into hospital_branch values (1,'banasree',123,'farazy_bns@gmail.com');
insert into hospital_branch values (2,'azimpur',456,'farazy_azm@gmail.com');
insert into hospital_branch values (3,'khilgaon',789,'farazy_khl@gmail.com');

insert into department values (1, 'dental', 10, 'MR.RASHID', 1);
insert into department values (2, 'neurology', 5, 'MR.HUMAYUN', 2);
insert into department values (3, 'cardiology', 8, 'DEVI_SHETTY', 3);

insert into physician values (1, 'MR.HABIB', 1, 'PROFESSOR', 1456);
insert into physician values (2, 'MR.SHAMIM', 2, 'ASSOCIATE_PROFESSOR', 57656);
insert into physician values (3, 'MR.LIMON', 2, 'PROFESSOR', 5456);

insert into patient values (18, 'ABIR', 'MALE', 22, 77.5);
insert into patient values (28, 'RAUFUN', 'MALE', 28, 63.5);
insert into patient values (38, 'FARIHA', 'FEMALE', 22, 62);

insert into nurse values (1, 'ishika', 1, 1, '123', 'ishika@gmail.com');
insert into nurse values (2, 'samia', 2, 2, '456', 'samiaa@gmail.com');
insert into nurse values (3, 'rahima', 3, 3, '789', 'rahima@gmail.com');

insert into appointment values (400, '2024-12-12', '3.00pm', 18, 1);
insert into appointment values (401, '2024-11-11', '4.00pm', 28, 2);
insert into appointment values (402, '2024-12-11', '3.00pm', 38, 3);
/