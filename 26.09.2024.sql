create table pracownicy(
    imie varchar(255),
    nazwisko varchar(255),
    jezyk varchar(255)
)
;


insert into pracownicy
values
('Jan', 'Kowalski', 'PHP'),
('Antoni', 'Malinowski', 'PHP'), 
('Antoni', 'Malinowski', 'CSS'), 
('Antoni', 'Malinowski', 'HTML'), 
('Jan', 'Malinowski',  'HTML'),
('Jan', 'Malinowski', 'Java'),
('Andrzej', 'Ziemiański', 'JavaScript'),
('Andrzej', 'Ziemiański', 'CSS'),
('Andrzej', 'Ziemiański', 'HTML')

delete from pracownicy 

select *
from pracownicy
where jezyk = 'Java'
;


create table pracownicy(
    id int AUTO_INCREMENT PRIMARY KEY,
    imie varchar(255),
    nazwisko varchar(255)
)
;

insert into pracownicy
(imie, nazwisko)
values
('Jan', 'Kowalski'),
('Antoni', 'Malinowski'),
('Andrzej', 'Ziemiański'),
('Jan', 'Malinowski')
;

create table jezyki(
    jezyk varchar(255),
    idPracownik int,
    foreign key(idPracownik) references pracownicy(id)
)
;

insert into jezyki
(idPracownik, jezyk)
values
(1, 'PHP'),
(2, 'PHP'), 
(2, 'CSS'), 
(2, 'HTML'), 
(4, 'HTML'),
(4, 'Java'),
(3, 'JavaScript'),
(3, 'CSS'),
(3, 'HTML')
;

create table languages(
    id int AUTO_INCREMENT PRIMARY KEY,
    nazwa varchar(255)
)

insert into languages
(nazwa)
select distinct jezyk from  jezyki


create table znane_jezyki(
    idJezyka int, 
    idPracownika int 
    )
insert into znane_jezyki
(idPracownika, idJezyka)
values
(1, 1),
(2, 1), 
(2, 2), 
(2, 3), 
(4, 3),
(4, 4),
(3, 5),
(3, 2),
(3, 3)
