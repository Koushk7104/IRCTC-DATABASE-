create database koushik6201;
use koushik6201;
create table train_le6201(train_no int primary key,train_name varchar(20),train_source varchar(40),train_destination varchar(40),start_time time,reach_time time,travel_time varchar(9),distance_in_km int,class varchar(20),days int,train_type varchar(10));
desc train_le6201;
insert into train_le6201 values(12704,'Falaknama sf express','Secunderabad','Howrah','15:55','18:10','26Hr15min',1545,'1A/2A/3E/SL',2,'Superfast');
select *from train_le6201;

create table tickets_le6201(PNR_NO bigint primary key,transaction_id bigint,from_source varchar(40),to_station varchar(40),date_of_journey date,class varchar(2),date_of_booking date,total_ticket_fare float);
desc tickets_le6201;
insert into tickets_le6201 values(4139652499,100003786496598,'Secunderabad','Howrah','2024-11-17','SL','2024-10-20',841.8);
select *from tickets_le6201;

create table passenger_le6201(PNR_NO bigint primary key,train_no int,class varchar(20),Name_of_passenger varchar(30),Age_of_passenger int,gender_of_passenger varchar(1),Conformation_status varchar(3));
desc passenger_le6201;
insert into passenger_le6201 values(4139652499,12704,'SL','Koushik',21,'M','CNF');
select *from passenger_le6201;

create table train_route_le6201(train_no int primary key,route_no varchar(2),station_code varchar(5),train_name varchar(20),arrival_time time,depart_time time,distance_in_km int,days int);
desc train_route_le6201;
insert into train_route_le6201 values(12704,'1','SC','Falaknama sf express','15:35:00','15:55:00',1545,2);
select *from train_route_le6201;

create table train_ticket_fair_le6201(train_no int primary key,class varchar(20),base_fair float,reservation_fair float,superfast_charge float, other_charge float,tatkal_charge float,service_tax float,total_fair float);
desc train_ticket_fair_le6201;
insert into train_ticket_fair_le6201 values(12704,'SL',615,20,30,11.8,184,0,845);
select *from train_ticket_fair_le6201;