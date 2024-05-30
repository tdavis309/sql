create table MOVIE_CUSTOMER(
		CUSTOMER_ID SERIAL primary key,
		FIRST_NAME VARCHAR(150),
		LAST_NAME VARCHAR(150),
		PHONE_NUMBER VARCHAR(10),
		EMAIL VARCHAR(120)

);

create table MOVIE_CONSESSIONS(
		SNACK_ID SERIAL primary key,
		PRICE INTEGER,
		SNACK_NAME VARCHAR(150)

);

CREATE TABLE MOVIES (
    MOVIE_ID SERIAL PRIMARY KEY,
    TITLE VARCHAR(150),
    RATING VARCHAR(150)
);

CREATE TABLE TICKETS (
    TICKET_ID SERIAL PRIMARY KEY,
    AMOUNT INTEGER,
    MOVIE_TIME INTEGER,
    MOVIE_ID INTEGER,
    FOREIGN KEY (MOVIE_ID) REFERENCES MOVIES(MOVIE_ID)
);


select * from movies;
select * from tickets;
select * from movie_customer;
select * from movie_consessions ;

insert into movie_consessions 
values (1, 4.99, 'FRITOS');
 