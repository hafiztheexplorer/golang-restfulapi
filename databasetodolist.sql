use gorestfulapi_todolistapp;

create table userpassword(
user_id integer primary key auto_increment,
username varchar(50) not null,
password varchar(50) not null,
email varchar(100) not null
)engine InnoDB;

create table todolist(
todolist_id integer primary key auto_increment,
user_id integer,
todolistname varchar(100) not null,
foreign key(user_id) references userpassword(user_id)
)engine = InnoDB;

create table todolistapp(
todolistitem_id integer primary key auto_increment,
todolistname varchar(100) not null,
itemname varchar(300),
priority integer,
checked bool,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)engine = InnoDB;

select * from userpassword;
insert into userpassword (username,password,email)
values 
("user1","password1","email1"),
("user2","password2","email1"),
("user3","password3","email1");

select * from todolist;
alter table todolist
add constraint todolist_ibfk_1 foreign key (user_id) 
references userpassword (user_id);
