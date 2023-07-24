SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

insert into cars (VIN, manufacturer, model, year, color)
values ('1fg2ds', 'Lada', 'Proletarian', '1989', 'rust'),
       ('5kl3jj', 'Skoda', 'Fabia', '2010', 'white'),
       ('2lk9uy', 'Porsche', 'Cayane', '2177', 'futuristic');

insert into customers (customer_id, name, address, city, state, postalcode)
values ('15512', 'Labda Abdulah', 'Arigato Dattebayo 9', 'Tokyo', '', '2X345G'),
       ('45462', 'Michal Krivochenko', 'Parizska 7', 'Banovce nad Bebravou', '', '90078'),
       ('55522', 'Charles Xavier', 'Badjaga 87', 'Cenkovce', '', '78LD7');

insert into invoices (invoice_number, date, car, customer, sales_person)
values ('45', '2011-02-03', '1', '2', '1'),
       ('15', '2012-03-04', '2', '3', '1'),
       ('14', '2013-04-05', '3', '1', '2');

insert into sales_people (staff_id, name, store)
values ('001', 'Antonio Margarethe', 'Milan'),
       ('002', 'Dominic De Coco', 'Neapol'),
       ('003', 'Enzo Gorlomi', 'Roma')
