# EasyShop

SE452 - Group 4   
E-Commerce Website

EasyShop is an e-commerce web application that allows users to shop for products. The requirements is that a user will need to register for an account, before they can make any purchases or view the shopping cart. Otherwise, the guest will only have access to view whatever is in the Products page. As for the Admin, they have permission to create, update, and delete products.
Here are the following technologies that we used to build this application:
Front: Bootstrap, HTML/CSS, NetBeans IDE
Middle: Spring Framework, Javascript, Hibernate
Back: Tomcat, MySQL   

## Use Case Description

The following use case description describe the various interactions the user will have with the application:

Guests
- Only has access to view a full list of products and the product detail page
- They will need to create an account, before they can use the shopping cart

Customers
- They can login and logout on the ecommerce website
- They can view the full list of products and the product detail page
- They can add / remove products in the shopping cart

Admin
- Has access to add, delete, and modify a product
- They can login and logout with the admin account

## Screenshot

![Screenshot](https://github.com/du3ly/EasyShop1/blob/master/images/Picture1.png)
![Screenshot](https://github.com/du3ly/EasyShop1/blob/master/images/Picture2.png)
![Screenshot](https://github.com/du3ly/EasyShop1/blob/master/images/Picture3.png)
![Screenshot](https://github.com/du3ly/EasyShop1/blob/master/images/Picture4.png)

## Notes

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
