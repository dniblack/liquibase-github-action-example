--liquibase formatted sql

--changeset detaviusniblack:1
--rollback DROP TABLE person;
create table person (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--changeset detaviusniblack:2
--rollback DROP TABLE company;
create table company (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--changeset detaviusniblack:detaviusniblack1
--rollback DROP TABLE yourname;
CREATE TABLE yourname (
    id int primary key,
    name varchar(50) not null
)

--changeset other.dev:3
--rollback ALTER TABLE person DROP COLUMN country;
alter table person add column country varchar(2)

--changeset other.dev:4
--rollback ALTER TABLE person DROP COLUMN state;
alter table person add column state varchar(2)

--changeset other.dev:5
--rollback ALTER TABLE company DROP COLUMN country;
alter table company add column country varchar(2)

logLevel: info
changeLogFile: samplechangelog.h2.sql
url:jdbc:mysql://localhost:3306/e-commerce_cart
username:root
password:ThisIsANewPassword22