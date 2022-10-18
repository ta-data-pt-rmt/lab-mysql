SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";
insert into Customers values
(30001,'Napoléon Bonaparte',+33179754000,' ','40 Rue du Colisée','Paris','Île-de-France','France',75008,2),
(10001,'Pablo Picasso',+34636176382,'Paseo de la Chopera', 14,'Madrid','Madrid','Spain',28045,0),
(20001,'Abraham Lincoln',+13059077086,'Sup@1','NULL','Miami','Florida','United States',33130,1);

select *
FROM Invoices;

insert into Salespersons values
(00001,'Petey Cruiser','Madrid',0),
(00002,'AnnaSthesia','Barcelona',1),
(00003,'Paul Molive','Berlin',2),
(00004,'Gail Forcewind','Paris',3),
(00005,'Paige Turner','Mimia',4),
(00006,	'Bob Frapples','Mexico City',5),
(00007,'Walter Melon','Amsterdam',6),
(00008,'Shonda Leer','São Paulo',7);


insert into Invoices values
(852399038,	'2018-08-22',0,1,3,10001),
(731166526,'2018-12-31',3,0,5,20001),
(271135104,'2019-01-22',2,2,7,3001);


insert into Cars values
('3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue',00001,10001,0),
('ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red',00002,20001,1),
('RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White',00005,50001,2); 

select *
FROM Invoices;

-- DROP TABLE Customers ;

