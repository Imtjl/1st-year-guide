
CREATE TYPE sex AS ENUM ('male', 'female', 'neutral');

create table Position (
	id serial primary key,
	name text not null,
	description text
);

create table Sponsers (
	id serial primary key,
	name text not null, 
	address text not null,
	contact text
);

create table Staff (
	id serial primary key,
	name text not null, 
	surename text,
	birthday timestamp not null, 
	position_id int not null references Position(id) on delete cascade,
	staff_sex sex not null default 'neutral'
);

create table Models (
	id serial primary key,
	name text not null, 
	surename text,
	in_company_since date,
	birthday timestamp not null,
	model_sex sex not null default 'neutral'
);

create table Shows (
	id serial primary key,
	location text not null,
	winning_prize money,
	show_date date,
	winner_id int references Models(id) on delete cascade
);

create table Staff_on_show (
	id serial primary key,
	show_id int references Shows(id) on delete cascade,
	staff_id int references Staff(id) on delete cascade
);

create table Show_models (
	id serial primary key,
	show_id int references Shows(id) on delete cascade,
	model_id int references Models(id) on delete cascade
);

create table Clothes (
	id serial primary key, 
	name text not null, 
	supply_date timestamp not null,
	clothes_sex sex not null default 'neutral'
);
 
create table Clothes_worn_by_models_on_show (
	id serial primary key,
	show_id int references Shows(id) on delete cascade,
	model_id int references Models(id) on delete cascade,
	clothes_id int references Clothes(id) on delete cascade
);

create table Show_sponsers (
	id serial primary key,
	show_id int references Shows(id) on delete cascade,
	sponsor_id int references Sponsers(id) on delete cascade
);


INSERT INTO Position (name, description) VALUES 
('Manager', 'Responsible for managing the company and making important decisions'),
('Designer', 'Responsible for creating new clothing designs'),
('Stylist', 'Responsible for selecting and coordinating outfits for models'),
('Makeup Artist', 'Responsible for applying makeup to models for shows and photoshoots'),
('Hair Stylist', 'Responsible for styling hair for models for shows and photoshoots');

INSERT INTO Sponsers (name, address, contact) VALUES 
('Nike', '123 Main St, New York, NY', '555-555-5555'),
('Adidas', '456 Broadway, Los Angeles, CA', '444-444-4444'),
('Puma', '789 Market St, San Francisco, CA', '333-333-3333');

INSERT INTO Staff (name, surename, birthday, position_id, staff_sex) VALUES 
('John', 'Doe', '1980-01-01 00:00:00', 1, 'male'),
('Jane', 'Doe', '1985-05-05 00:00:00', 2, 'female'),
('Mark', 'Smith', '1990-10-10 00:00:00', 3, 'male'),
('Emily', 'Johnson', '1995-03-15 00:00:00', 4, 'female'),
('David', 'Lee', '2000-08-20 00:00:00', 5, 'male');

INSERT INTO Models (name, surename, in_company_since, birthday, model_sex) VALUES 
('Kate', 'Smith', '2018-01-01', '2000-01-01 00:00:00', 'female'),
('Tom', 'Johnson', '2019-02-01', '1998-02-01 00:00:00', 'male'),
('Lena', 'Lee', '2020-03-01', '2001-03-01 00:00:00', 'female'),
('Mike', 'Wang', '2021-04-01', '1999-04-01 00:00:00', 'male'),
('LORA', 'SHMORA', '2021-05-01', '2002-05-01 00:00:00', 'male'),
('Sara', 'Chen', '2022-05-01', '2002-05-01 00:00:00', 'female');

INSERT INTO Shows (location, winning_prize, show_date, winner_id) VALUES 
('New York Fashion Week', 5000.00, '2022-02-01', 1),
('Paris Fashion Week', 7500.00, '2022-03-01', 3),
('Milan Fashion Week', 10000.00, '2022-04-01', 5);

INSERT INTO Staff_on_show (show_id, staff_id) VALUES 
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5);

INSERT INTO Show_models (show_id, model_id) VALUES 
(1, 1),
(1, 6),
(1, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 5);

INSERT INTO Clothes (name, supply_date, clothes_sex) VALUES 
('T-Shirt', '2021-01-01 00:00:00', 'neutral'),
('Jeans', '2021-02-01 00:00:00', 'neutral'),
('Dress', '2021-03-01 00:00:00', 'female'),
('Suit', '2021-04-01 00:00:00', 'male'),
('Skirt', '2021-05-01 00:00:00', 'female');

INSERT INTO Clothes_worn_by_models_on_show (show_id, model_id, clothes_id) VALUES 
(1, 1, 1),
(1, 1, 2),
(1, 2, 2),
(2, 3, 3),
(2, 4, 4),
(3, 1, 5),
(3, 5, 4);

INSERT INTO Show_sponsers (show_id, sponsor_id) VALUES 
(1, 1),
(1, 2),
(2, 2),
(2, 3),
(3, 1),
(3, 3);

