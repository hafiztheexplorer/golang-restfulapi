use gorestfulapi_todolistapp;


create table userpassword(
id integer primary key auto_increment,
username varchar(50) not null,
password varchar(50) not null,
email varchar(100) not null
)engine InnoDB;

create table todolistapp(
id integer primary key auto_increment,
todolistname varchar(100) not null,
itemname varchar(300),
priority integer,
checked bool,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)engine = InnoDB;

create table todolistowner(
id integer primary key auto_increment,
username varchar(50) not null,
todolistname varchar(100) not null
)engine = InnoDB;

select * from todolistapp;
select * from userpassword;
select * from todolistowner;