CREATE DATABASE db_hpchild;
USE db_hpchild;
CREATE TABLE hp_cad_user(
	hp_user_cod int auto_increment primary key,
    hp_user_level int not null,
    hp_user_name varchar(40) not null,
    hp_user_login varchar(10) not null,
    hp_user_pass varchar(20) not null
	);
    
CREATE TABLE hp_cad_category(
		hp_category_cod int auto_increment primary key,
        hp_category_name varchar(25) not null,
        hp_category_group varchar(1) not null,
        hp_category_age_group_min int
        );
        
CREATE TABLE hp_cad_product(
	hp_product_cod int auto_increment primary key,
    hp_product_name varchar(50) not null,
    hp_product_desc varchar(100) not null,
    hp_product_price float(2) not null,
    hp_product_category_cod int not null,
    constraint fk_category foreign key (hp_product_category_cod)
    references hp_cad_category(hp_category_cod)
    on delete cascade
	on update cascade 
    );
        