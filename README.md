# EasyShop

SE452 - Group 4   
E-Commerce Website   
    
Spring MVC, MySQL, Hibernate, Netbeans    
    
Broken:
   - None at the moment
   
Nice to have:
   - Validations

SQL Schema for Security   
create table users(
	username varchar(50) not null primary key,
	password varchar(50) not null,
	enabled boolean not null
);

create table authorities (
	username varchar(50) not null,
	authority varchar(50) not null,
	constraint fk_authorities_users foreign key(username) references users(username)
);
create unique index ix_auth_username on authorities (username,authority);