create database studenci;
use studenci;

create table studenci(
    id_studenta char(4) primary key,
    nazwisko varchar(255) not null,
    imie varchar(255) not null 
);

create table oceny(
    id_studenta char(4) not null,
    przedmiot varchar(255) not null,
    ocena int not null,
    dzien date not null,
    primary key(id_studenta, przedmiot)
);

insert into studenci 
values 
('xeds','Brzęczyszczykiewicz','Grzegorz');

insert into oceny
values
('xeds', 'Matematyka', 1, '2024-09-01');

insert into oceny
values
('dekz', 'Matematyka', 1, '2024-09-01');

insert into studenci
values
('dekz', 'Kowalski', 'Adam');

alter table oceny
add foreign key(id_studenta) references studenci(id_studenta);