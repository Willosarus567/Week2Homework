CREATE TABLE Employees ( employee_id INT PRIMARY KEY AUTO_INCREMENT,
						 first_name VARCHAR(20), 
						 last_name VARCHAR(20),
						 birth_date DATE,
						 gender VARCHAR(10) Default 'not listed',
						 role VARCHAR(20) DEFAULT 'barkeeper.',
						 description VARCHAR(40) DEFAULT 'they are an extension of the boss.',
						 income DECIMAL DEFAULT 0,
						 building_id INT,            /*I will later put in my FOREIGN KEY */
						 supervisor_id INT					 /*I will later put in the foreign key, The supervisor ID of each employee will match another employees' ID who is 
						 									 their respective boss
															 ALTER TABLE Employees ADD FOREIGN KEY(supervisor_id) REFERENCES Employees(employee_id); */						 
);

-- SQL accepts dates of a format: yyyy-mm-dd.  
--Employees values
INSERT INTO Employees(first_name, last_name, birth_date, gender, role, description, income, building_id, supervisor_id) 

					  VALUES( 'Jon', 'Taffer', '1973-09-30', 'Male', 'owner', 'manages all properties & supervisors', 300000.00, 301, NULL),
							( 'Bob', 'Johnson', '1983-10-29', 'Male', 'supervisor', 'manages the employees on site', 48000.00, 101, 1),
							( 'John', 'Hughes', '1992-10-03', 'Male', 'bartender', 'serves drinks & takes orders', 35000.00, 101, 2),
							( 'Liz', 'Barry', '1993-05-27', 'Female', 'bartender', 'serves drinks & takes orders', 35001.00, 101, 2),
							( 'Anna', 'Krevansky', '1990-08-23', 'Female', 'bartender', 'serves drinks & takes orders', 37000.00, 101, 2),
							( 'Phillip', 'DeFranco', '1989-02-28', 'Male', 'line cook', 'prepares and cooks food', 45000.00, 101, 2),
							( 'Frank', 'Horrigan', '1990-04-15', 'Male', 'line cook', 'prepares and cooks food', 42000.00, 101, 2),
							( 'Vick', 'Dandy', '1988-12-11', 'Male', 'supervisor', 'manages the employees on site', 48000.00, 201, 1),
							( 'Jess', 'DelVecchi', '1993-03-18', 'Female', 'bartender', 'serves drinks & takes order', 35000.00, 201, 8),
							( 'Nicole', 'OHara', '1991-12-12', 'Female', 'bartender', 'servers drinks & takes orders', 33090.00, 201, 8),
							( 'Samantha', 'Maxwell', '1991-10-29', 'Female', 'line cook', 'prepares and cooks food', 36000.00, 201, 8),
							( 'Hershal', 'Green', '1987-11-09', 'Male', 'line cook', 'prepares and cooks food', 36000.00, 201, 8),
							( 'Margi', 'Hughes', '1987-08-24', 'Female', 'bartender', 'serves dinks & takes orders', 38000.00, 201, 8),
							( 'Lorden', 'Miller', '1983-09-30', 'Male', 'supervisor', 'manages the employees on site', 50000.00, 301, 1),
							( 'Vickie', 'Vale', '1990-12-15', 'Female', 'bartender', 'serves drinks & takes order', 34000.00, 301, 14),
							( 'Richard', 'Glikes', '1984-09-11', 'Male', 'line cook', 'prepares and cooks food', 34000.00, 301, 14),
							( 'Olga', 'Strasvongonoski', '1990-10-10', 'Female', 'linecook', 'prepares and cooks food', 36000.00, 301, 14),
							( 'Jennifer', 'Zhang', '1994-11-23', 'Female', 'bartender', 'serves drinks & takes orders', 39000.00, 301, 14),
							( 'Carrie', 'Harrier', '1992-10-29', 'Female', 'bartender', 'serves drinks & takes orders', 38000.00, 301, 14),
							( 'Carren', 'Yule', '1989-11-30', 'Female', 'supervisor', 'manages employees on site', 50101.00, 401, 1),
							( 'Georgina', 'Plumbings', '1991-12-12', 'Female', 'bartender', 'servers drinks & takes orders', 35300.00, 401, 20),
							( 'Paulina', 'Katholopolopopolus', '1992-10-12', 'Female', 'bartender', 'serves drinks and takes orders', 38000.00, 401, 20),
							( 'MaryKate', 'Lesserson', '1993-10-11', 'Female', 'line cook', 'prepares and cooks food', 40000.00, 401, 20),
							( 'Doug', 'Meetersohn', '1989-09-12', 'Male', 'line cook', 'prepares and cooks food', 39000.00, 401, 20),
							( 'Felicia', 'Jonesburg', '1990-12-18', 'Female', 'bartender', 'serves drinks and takes orders',  38000.00, 401, 20),
							( 'Katie', 'Dodger', '1988-11-02', 'Female', 'supervisor', 'manages the employees on site', 48000.00, 501, 1),
							( 'Camila', 'Harris', '1989-10-01', 'Female', 'line-cook', 'prepares and cooks food', 40000.00, 501, 26),
							( 'Daine', 'Hillard', '1993-12-18', 'Female', 'bartender', 'serves drinks and takes orders',  37000.00, 501, 26),
							( 'Francine', 'Hickard', '1991-01-13', 'Female', 'bartender', 'serves drinks and takes orders',  35000.00, 501, 26),
							( 'Christinitha', 'Long', '1992-10-01', 'Female', 'line-cook', 'prepares and cooks food', 40000.00, 501, 26),
							( 'Daine', 'Hillard', '1993-12-18', 'Female', 'bartender', 'serves drinks and takes orders',  37000.00, 501, 26),
							( 'Kirsten', 'Wuntd', '1988-12-07', 'Female', 'supervisor', 'manages the employees on site', 48000.00, 601, 1),
							( 'Greg', 'Matzer', '1989-10-01', 'Male', 'line-cook', 'prepares and cooks food', 40000.00, 601, 32),
							( 'Mike', 'Hillard', '1993-12-18', 'Male', 'bartender', 'serves drinks and takes orders',  37000.00, 601, 32),
							( 'Dilliard', 'Hickard', '1991-01-13', 'Male', 'bartender', 'serves drinks and takes orders',  35000.00, 601, 32),
							( 'Francis', 'Long', '1992-10-01', 'Male', 'line-cook', 'prepares and cooks food', 40000.00, 601, 32),
							( 'Dirk', 'Hillard', '1993-12-18', 'Male', 'bartender', 'serves drinks and takes orders',  37000.00, 601, 32);


CREATE TABLE Buildings ( building_id INT PRIMARY KEY,
						 building_name VARCHAR(40),
						 floors INT,
						 employees INT,
						 supervisor_id INT,
						 street_address VARCHAR(30),
						 state_initials VARCHAR(2),
						 supplier_id INT,
						 expenses DECIMAL
						 							--To be altered in later
						 							/*ALTER TABLE Buildings ADD FOREIGN KEY(supervisor_id) REFERENCES Employees(employee_id),
						 							  ALTER TABLE Buildings ADD FOREIGN KEY(supplier_id) REFERENCES Supplies(supplier_id)*/
);

--Building Values 
INSERT INTO Buildings(building_id, building_name, floors, employees, supervisor_id, street_address, state_initials, supplier_id, expenses) 
							
							VALUES(101, 'Crafty Time Eatery', 2, 6, 2, '1210 Chestnut St. 19019', 'PA', 1, 600000.00),
								  (201, 'NightOwl Brewpub', 3, 6, 8, '671 Crestmont Ave. 19019', 'PA', 2, 610000.00),
								  (301, 'Naughty Jester Bar & Grill', 3, 6, 14, '123 Sansom St. 19019', 'PA', 3, 611320.00),
								  (401, 'Intoxicant Emporium', 4, 6, 20, '2500 Chaddwick St. 19019', 'PA', 4, 500000.00),
								  (501, 'Velvet Lantern', 3, 6, 26, '200 Church St. 19019', 'PA', 5, 450000.00),
								  (601, 'Wandering Anchor Drinkery', 2, 6, 32, '26 13th St. 19019', 'PA', 6, 480000.00);


CREATE TABLE Owner ( owner_id INT PRIMARY KEY,
					 first_name VARCHAR(20),
					 last_name VARCHAR(20),
					 building_id INT,
					 FOREIGN KEY(building_id) REFERENCES Buildings(building_id)  /*Remember not only does it have to reference a primary key but 
																			it must also have to reference the same data type VALUE, for something to equal the other both 
																			values must be the same type. 
																			*/
);
--Owner Values
INSERT INTO Owner(owner_id, first_name, last_name, building_id) 
			
							VALUES(1, 'Jon', 'Taffer', 301);


CREATE TABLE Supplies ( supplier_id INT PRIMARY KEY AUTO_INCREMENT,
						supplier_name VARCHAR(40),
						brewing_supplies VARCHAR(40),
						utility_supplies VARCHAR(40),
						date_purchased DATE,
						brewing_supplies_expense DECIMAL,
						utility_supplies_expense DECIMAL,
						building_id INT,
						FOREIGN KEY(building_id) REFERENCES Buildings(building_id)
);

--Supplies Values
INSERT INTO Supplies(supplier_name, brewing_supplies, utility_supplies, date_purchased, brewing_supplies_expense, utility_supplies_expense, building_id) 
							VALUES('HBC 342', 'hops', NULL, '2019-03-03', 100000.00, 0.00, 401),
						   		  ('Northern Brewery', 'tank fermenter', 'Industrial cleaners', '2019-03-03', 8000.00, 300.00, 401),
						   		  ('Master Brewer', 'distilling coils', 'paper products', '2019-02-17', 5000.00, 1000.00, 401),
						   		  ('Kegerator', 'stainless steel doors', 'paint & rust remover', '2019-01-12', 3000.00, 1500.00, 401),
						   		  ('Rapids Inc.', 'faucet rack with handles', NULL, '2019-01-03', 5800.00, 0.00, 401),
						   		  ('Brewtech LLC.', 'distilling circutry boards', 'condensed air cans', '2019-02-23', 17000.00, 60.00, 401);


CREATE TABLE Services ( service_id INT PRIMARY KEY,
						service_name VARCHAR(40),
						service_price DECIMAL		/*Key take away is that a composite key must have two like VALUES combined as well as referenced, this is the constraint.*/
);

--Services Values
INSERT INTO Services(service_id, service_name, service_price) VALUES(111,'yeast cultivation & culturing', 75.00),
						   											(211,'beverage industry consultation', 50.00),
						   											(311,'room rentals', 40.00),
						   											(411,'catering', 70.00),
						   											(511,'Rockbottom life advice', 0.00),
						   											(611,'Beverage sale', NULL),
																	(711,'Food sale', NULL);


CREATE TABLE Sales ( sale_id INT PRIMARY KEY AUTO_INCREMENT,
					 service_name VARCHAR(60) DEFAULT 'service transfered',
					 service_id INT,
					 service_status VARCHAR(10),
					 building_name VARCHAR(60),
					 building_id INT,
					 amount_recieved DECIMAL,
					 customer_name VARCHAR(40),
					 customer_status_id INT, 
					 date_recieved DATE,
					 FOREIGN KEY(service_id) REFERENCES Services(service_id),
					 FOREIGN KEY(building_id) REFERENCES Buildings(building_id)
					 /*
					   ALTER TABLE Sales ADD FOREIGN KEY(service_id) REFERENCES Customers(customer_id),
					   ALTER TABLE Sales ADD FOREIGN KEY(customer_status_id) REFERENCES Customers(customer_status_id);     --Ask about why this doesn't work.*/
);

--Sales Values
INSERT INTO Sales(service_name, service_id, service_status, building_name, building_id, amount_recieved, customer_name, customer_status_id, date_recieved) 

				  VALUES('beverage industry consultation', 111, 'active', 'Naughty Jester Bar & Grill', 101, 300.00, 'Boren Loren', 100, '2019-07-11'),
						('yeast cultivation & culturing', 211, 'active', 'Intoxicant Emporium', 201, 150.00, 'Helter Skelter', 200, '2019-01-04'),
						('rockbottom life advice', 311, 'active', 'Crafty Time Eatery', 301, 0, 'Dorem Thorgrunder', 300, '2019-08-10'),
						('catering', 411, 'active', 'NightOwl Brewpub', 401, 210.00, 'Val Valiant Thor', 400, '2019-12-24'),
						('room rentals', 511, 'active', 'NightOwl Brewpub', 501, 120.00, 'Mike Johnson', 500, '2019-12-24'),
						('Beverage sale: double stack honey mead', 611, 'active', 'Crafty Time Eatery', 601, 14.00, 'George Michael', 600, '2019-08-10');

CREATE TABLE Customers ( customer_id INT AUTO_INCREMENT,
					     customer_name VARCHAR(50),
						 customer_birthday DATE,
						 customer_status VARCHAR(20) DEFAULT 'unknown.',
						 customer_cakeday DATE DEFAULT '1969-10-29.',
						 customer_class VARCHAR(50),
						 customer_status_id INT,
						 building_id INT,
						 PRIMARY KEY(customer_id, customer_status_id),
						 FOREIGN KEY(building_id) REFERENCES Buildings(building_id)
);

--Customer Values
INSERT INTO Customers(customer_name, customer_birthday, customer_status, customer_cakeday, customer_class, customer_status_id, building_id) 
					
					VALUES( 'Boren Loren', '1979-11-22', 'sick', 'Gam3r lvl2', 100, 101 ),
						  ( 'Helter Skelter', '1980-09-12', 'fine', 'Mechanic lvl4', 200, 201 ),
						  ( 'Dorem Thorgrunder', '1985-03-13', 'hangry', 'Pilot lvl2', 300, 301 ),
						  ( 'Val Valiant Thor', '1987-04-26', 'placid', 'MajorLtCorporalGunodeir5thprestigee', 400, 401 ),
						  ( 'Mike Johnson', '1991-01-02', 'hydrated', 'Welder lvl3', 500, 501 ),
						  ( 'George Michael', '19');

--employees
ALTER TABLE employees ADD FOREIGN KEY(building_id) REFERENCES buildings(building_id);
 
--supplies
ALTER TABLE supplies ADD FOREIGN KEY(building_id) REFERENCES buildings(building_id);

--customers
ALTER TABLE customers ADD FOREIGN KEY(customer_status_id) REFERENCES sales(sale_id);


CREATE TABLE Employees ( employee_id INT PRIMARY KEY AUTO_INCREMENT,
						 first_name VARCHAR(20), 
						 last_name VARCHAR(20),
						 birth_date DATE,
						 gender VARCHAR(10) Default 'not listed',
						 role VARCHAR(20) DEFAULT 'barkeeper.',
						 description VARCHAR(40) DEFAULT 'they are an extension of the boss.',
						 income DECIMAL DEFAULT 0,
						 building_id INT,            /*I will later put in my FOREIGN KEY */
						 supervisor_id INT					 /*I will later put in the foreign key, The supervisor ID of each employee will match another employees' ID who is 
						 									 their respective boss
															 ALTER TABLE Employees ADD FOREIGN KEY(supervisor_id) REFERENCES Employees(employee_id); */						 
);

-- SQL accepts dates of a format: yyyy-mm-dd.  
--Employees values
INSERT INTO Employees(first_name, last_name, birth_date, gender, role, description, income, building_id, supervisor_id) 

					  VALUES( 'Jon', 'Taffer', '1973-09-30', 'Male', 'owner', 'manages all properties & supervisors', 300000.00, 301, NULL),
							( 'Bob', 'Johnson', '1983-10-29', 'Male', 'supervisor', 'manages the employees on site', 48000.00, 101, 1),
							( 'John', 'Hughes', '1992-10-03', 'Male', 'bartender', 'serves drinks & takes orders', 35000.00, 101, 2),
							( 'Liz', 'Barry', '1993-05-27', 'Female', 'bartender', 'serves drinks & takes orders', 35001.00, 101, 2),
							( 'Anna', 'Krevansky', '1990-08-23', 'Female', 'bartender', 'serves drinks & takes orders', 37000.00, 101, 2),
							( 'Phillip', 'DeFranco', '1989-02-28', 'Male', 'line cook', 'prepares and cooks food', 45000.00, 101, 2),
							( 'Frank', 'Horrigan', '1990-04-15', 'Male', 'line cook', 'prepares and cooks food', 42000.00, 101, 2),
							( 'Vick', 'Dandy', '1988-12-11', 'Male', 'supervisor', 'manages the employees on site', 48000.00, 201, 1),
							( 'Jess', 'DelVecchi', '1993-03-18', 'Female', 'bartender', 'serves drinks & takes order', 35000.00, 201, 8),
							( 'Nicole', 'OHara', '1991-12-12', 'Female', 'bartender', 'servers drinks & takes orders', 33090.00, 201, 8),
							( 'Samantha', 'Maxwell', '1991-10-29', 'Female', 'line cook', 'prepares and cooks food', 36000.00, 201, 8),
							( 'Hershal', 'Green', '1987-11-09', 'Male', 'line cook', 'prepares and cooks food', 36000.00, 201, 8),
							( 'Margi', 'Hughes', '1987-08-24', 'Female', 'bartender', 'serves dinks & takes orders', 38000.00, 201, 8),
							( 'Lorden', 'Miller', '1983-09-30', 'Male', 'supervisor', 'manages the employees on site', 50000.00, 301, 1),
							( 'Vickie', 'Vale', '1990-12-15', 'Female', 'bartender', 'serves drinks & takes order', 34000.00, 301, 14),
							( 'Richard', 'Glikes', '1984-09-11', 'Male', 'line cook', 'prepares and cooks food', 34000.00, 301, 14),
							( 'Olga', 'Strasvongonoski', '1990-10-10', 'Female', 'linecook', 'prepares and cooks food', 36000.00, 301, 14),
							( 'Jennifer', 'Zhang', '1994-11-23', 'Female', 'bartender', 'serves drinks & takes orders', 39000.00, 301, 14),
							( 'Carrie', 'Harrier', '1992-10-29', 'Female', 'bartender', 'serves drinks & takes orders', 38000.00, 301, 14),
							( 'Carren', 'Yule', '1989-11-30', 'Female', 'supervisor', 'manages employees on site', 50101.00, 401, 1),
							( 'Georgina', 'Plumbings', '1991-12-12', 'Female', 'bartender', 'servers drinks & takes orders', 35300.00, 401, 20),
							( 'Paulina', 'Katholopolopopolus', '1992-10-12', 'Female', 'bartender', 'serves drinks and takes orders', 38000.00, 401, 20),
							( 'MaryKate', 'Lesserson', '1993-10-11', 'Female', 'line cook', 'prepares and cooks food', 40000.00, 401, 20),
							( 'Doug', 'Meetersohn', '1989-09-12', 'Male', 'line cook', 'prepares and cooks food', 39000.00, 401, 20),
							( 'Felicia', 'Jonesburg', '1990-12-18', 'Female', 'bartender', 'serves drinks and takes orders',  38000.00, 401, 20),
							( 'Katie', 'Dodger', '1988-11-02', 'Female', 'supervisor', 'manages the employees on site', 48000.00, 501, 1),
							( 'Camila', 'Harris', '1989-10-01', 'Female', 'line-cook', 'prepares and cooks food', 40000.00, 501, 26),
							( 'Daine', 'Hillard', '1993-12-18', 'Female', 'bartender', 'serves drinks and takes orders',  37000.00, 501, 26),
							( 'Francine', 'Hickard', '1991-01-13', 'Female', 'bartender', 'serves drinks and takes orders',  35000.00, 501, 26),
							( 'Christinitha', 'Long', '1992-10-01', 'Female', 'line-cook', 'prepares and cooks food', 40000.00, 501, 26),
							( 'Daine', 'Hillard', '1993-12-18', 'Female', 'bartender', 'serves drinks and takes orders',  37000.00, 501, 26),
							( 'Kirsten', 'Wuntd', '1988-12-07', 'Female', 'supervisor', 'manages the employees on site', 48000.00, 601, 1),
							( 'Greg', 'Matzer', '1989-10-01', 'Male', 'line-cook', 'prepares and cooks food', 40000.00, 601, 32),
							( 'Mike', 'Hillard', '1993-12-18', 'Male', 'bartender', 'serves drinks and takes orders',  37000.00, 601, 32),
							( 'Dilliard', 'Hickard', '1991-01-13', 'Male', 'bartender', 'serves drinks and takes orders',  35000.00, 601, 32),
							( 'Francis', 'Long', '1992-10-01', 'Male', 'line-cook', 'prepares and cooks food', 40000.00, 601, 32),
							( 'Dirk', 'Hillard', '1993-12-18', 'Male', 'bartender', 'serves drinks and takes orders',  37000.00, 601, 32);


CREATE TABLE Buildings ( building_id INT PRIMARY KEY,
						 building_name VARCHAR(40),
						 floors INT,
						 employees INT,
						 supervisor_id INT,
						 street_address VARCHAR(30),
						 state_initials VARCHAR(2),
						 supplier_id INT,
						 expenses DECIMAL
						 							--To be altered in later
						 							/*ALTER TABLE Buildings ADD FOREIGN KEY(supervisor_id) REFERENCES Employees(employee_id),
						 							  ALTER TABLE Buildings ADD FOREIGN KEY(supplier_id) REFERENCES Supplies(supplier_id)*/
);

--Building Values 
INSERT INTO Buildings(building_id, building_name, floors, employees, supervisor_id, street_address, state_initials, supplier_id, expenses) 
							
							VALUES(101, 'Crafty Time Eatery', 2, 6, 2, '1210 Chestnut St. 19019', 'PA', 1, 600000.00),
								  (201, 'NightOwl Brewpub', 3, 6, 8, '671 Crestmont Ave. 19019', 'PA', 2, 610000.00),
								  (301, 'Naughty Jester Bar & Grill', 3, 6, 14, '123 Sansom St. 19019', 'PA', 3, 611320.00),
								  (401, 'Intoxicant Emporium', 4, 6, 20, '2500 Chaddwick St. 19019', 'PA', 4, 500000.00),
								  (501, 'Velvet Lantern', 3, 6, 26, '200 Church St. 19019', 'PA', 5, 450000.00),
								  (601, 'Wandering Anchor Drinkery', 2, 6, 32, '26 13th St. 19019', 'PA', 6, 480000.00);


CREATE TABLE Owner ( owner_id INT PRIMARY KEY,
					 first_name VARCHAR(20),
					 last_name VARCHAR(20),
					 building_id INT,
					 FOREIGN KEY(building_id) REFERENCES Buildings(building_id)  /*Remember not only does it have to reference a primary key but 
																			it must also have to reference the same data type VALUE, for something to equal the other both 
																			values must be the same type. 
																			*/
);
--Owner Values
INSERT INTO Owner(owner_id, first_name, last_name, building_id) 
			
							VALUES(1, 'Jon', 'Taffer', 301);
ALTER TABLE owner ADD PRIMARY KEY(owner_id); 


CREATE TABLE Supplies ( supplier_id INT PRIMARY KEY AUTO_INCREMENT,
						supplier_name VARCHAR(40),
						brewing_supplies VARCHAR(40),
						utility_supplies VARCHAR(40),
						date_purchased DATE,
						brewing_supplies_expense DECIMAL,
						utility_supplies_expense DECIMAL,
						building_id INT,
						FOREIGN KEY(building_id) REFERENCES Buildings(building_id)
);

--Supplies Values
INSERT INTO Supplies(supplier_name, brewing_supplies, utility_supplies, date_purchased, brewing_supplies_expense, utility_supplies_expense, building_id) 
							VALUES('HBC 342', 'hops', NULL, '2019-03-03', 100000.00, 0.00, 401),
						   		  ('Northern Brewery', 'tank fermenter', 'Industrial cleaners', '2019-03-03', 8000.00, 300.00, 401),
						   		  ('Master Brewer', 'distilling coils', 'paper products', '2019-02-17', 5000.00, 1000.00, 401),
						   		  ('Kegerator', 'stainless steel doors', 'paint & rust remover', '2019-01-12', 3000.00, 1500.00, 401),
						   		  ('Rapids Inc.', 'faucet rack with handles', NULL, '2019-01-03', 5800.00, 0.00, 401),
						   		  ('Brewtech LLC.', 'distilling circutry boards', 'condensed air cans', '2019-02-23', 17000.00, 60.00, 401);


CREATE TABLE Services ( service_id INT PRIMARY KEY,
						service_name VARCHAR(40),
						service_price DECIMAL		/*Key take away is that a composite key must have two like VALUES combined as well as referenced, this is the constraint.*/
);

--Services Values
INSERT INTO Services(service_id, service_name, service_price) VALUES(111,'yeast cultivation & culturing', 75.00),
						   											(211,'beverage industry consultation', 50.00),
						   											(311,'room rentals', 40.00),
						   											(411,'catering', 70.00),
						   											(511,'Rockbottom life advice', 0.00),
						   											(611,'Beverage sale', NULL),
																	(711,'Food sale', NULL);


CREATE TABLE Sales ( sale_id INT PRIMARY KEY AUTO_INCREMENT,
					 service_name VARCHAR(60) DEFAULT 'service transfered',
					 service_id INT,
					 service_status VARCHAR(10),
					 building_name VARCHAR(60),
					 building_id INT,
					 amount_recieved DECIMAL,
					 customer_name VARCHAR(40),
					 customer_status_id INT, 
					 date_recieved DATE,
					 FOREIGN KEY(service_id) REFERENCES Services(service_id),
					 FOREIGN KEY(building_id) REFERENCES Buildings(building_id)
					 /*
					   ALTER TABLE Sales ADD FOREIGN KEY(service_id) REFERENCES Customers(customer_id),
					   ALTER TABLE Sales ADD FOREIGN KEY(customer_status_id) REFERENCES Customers(customer_status_id);     --Ask about why this doesn't work.*/
);

--Sales Values
INSERT INTO Sales(service_name, service_id, service_status, building_name, building_id, amount_recieved, customer_name, customer_status_id, date_recieved) 

				  VALUES('beverage industry consultation', 111, 'active', 'Naughty Jester Bar & Grill', 101, 300.00, 'Boren Loren', 100, '2019-07-11'),
						('yeast cultivation & culturing', 211, 'active', 'Intoxicant Emporium', 201, 150.00, 'Helter Skelter', 200, '2019-01-04'),
						('rockbottom life advice', 311, 'active', 'Crafty Time Eatery', 301, 0, 'Dorem Thorgrunder', 300, '2019-08-10'),
						('catering', 411, 'active', 'NightOwl Brewpub', 401, 210.00, 'Val Valiant Thor', 400, '2019-12-24'),
						('room rentals', 511, 'active', 'NightOwl Brewpub', 501, 120.00, 'Mike Johnson', 500, '2019-12-24'),
						('Beverage sale: double stack honey mead', 611, 'active', 'Crafty Time Eatery', 601, 14.00, 'George Michael', 600, '2019-08-10');

CREATE TABLE Customers ( customer_id INT AUTO_INCREMENT,
					     customer_name VARCHAR(50),
						 customer_birthday DATE,
						 customer_status VARCHAR(20) DEFAULT 'unknown.',
						 customer_cakeday DATE DEFAULT '1969-10-29.',
						 customer_class VARCHAR(50),
						 customer_status_id INT,
						 building_id INT,
						 PRIMARY KEY(customer_id, customer_status_id),
						 FOREIGN KEY(building_id) REFERENCES Buildings(building_id)
);

ALTER TABLE Customers ADD FOREIGN KEY(customer_class) REFERENCES Classes(customer_class);
ALTER TABLE Customers ADD FOREIGN KEY(customer_id) REFERENCES Classes(customer_id);
ALTER TABLE Customers ADD FOREIGN KEY(customer_name) REFERENCES Classes(customer_name);

--Customer Values
INSERT INTO Customers(customer_name, customer_birthday, customer_status, customer_cakeday, customer_class, customer_status_id, building_id) 
					
					VALUES( 'Boren Loren', '1979-11-22', 'sick', '2019-01-01', 'Gam3r', 100, 101 ),
						  ( 'Helter Skelter', '1980-09-12', 'fine', '2019-01-02', 'Mechanic', 200, 201 ),
						  ( 'Dorem Thorgrunder', '1985-03-13', 'hangry', '2019-01-03' ,'Pilot', 300, 301 ),
						  ( 'Val Valiant Thor', '1987-04-26', 'placid', '2019-01-04' ,'MajorLtCorporalGunodeir5thprestigee', 400, 401 ),
						  ( 'Mike Johnson', '1991-01-02', 'hydrated', '2019-01-05', 'Welder', 500, 501 ),
						  ( 'Abel', '1993-03-04', 'cool',  '2019-01-06', 'Pharmacist', 600, 601 ),
						  ( 'Mabel', '1979-11-22', 'sick', '2019-01-01', 'Gam3r', 100, 101 ),
						  ( 'Habel', '1980-09-12', 'fine', '2019-01-02', 'Mechanic', 200, 201 ),
						  ( 'Fabel', '1985-03-13', 'hangry', '2019-01-03' ,'Pilot', 300, 301 ),
						  ( 'Zabel', '1987-04-26', 'placid', '2019-01-04' ,'MajorLtCorporalGunodeir5thprestigee', 400, 401 ),
						  ( 'Gabel', '1991-01-02', 'hydrated', '2019-01-05', 'Welder', 500, 501 ),
						  ( 'Alorb', '1993-03-04', 'cool',  '2019-01-06', 'Pharmacist', 600, 601 )
						  ( 'Blorb', '1993-03-04', 'cool',  '2019-01-06', 'Pharmacist', 600, 601 ),
						  ( 'Mlorb', '1979-11-22', 'sick', '2019-01-01', 'Gam3r', 100, 101 ),
						  ( 'Hlorb', '1980-09-12', 'fine', '2019-01-02', 'Mechanic', 200, 201 ),
						  ( 'Florb', '1985-03-13', 'hangry', '2019-01-03' ,'Pilot', 300, 301 ),
						  ( 'Zlorb', '1987-04-26', 'placid', '2019-01-04' ,'MajorLtCorporalGunodeir5thprestigee', 400, 401 ),
						  ( 'Glorb', '1991-01-02', 'hydrated', '2019-01-05', 'Welder', 500, 501 ),
						  ( 'Alorb', '1993-03-04', 'cool',  '2019-01-06', 'Pharmacist', 600, 601 );

CREATE TABLE Classes ( customer_class VARCHAR(50),
					   class_id INT,
					   customer_name VARCHAR(50),
					   PRIMARY KEY(customer_class, customer_name)	   
);

INSERT INTO Classes(customer_class, class_id, customer_name) VALUES ( 'Gam3r', 1, 'Boren Loren'),
																	( 'Mechanic', 2,'Helter Skelter'),
						  											( 'Pilot', 3, 'Dorem Thorgrunder'),
						  											( 'MajorLtCorporalGunodeir5thprestigee', 4, 'Val Valiant Thor'),
						  											( 'Welder', 5, 'Mike Johnson' ),
						  											( 'Pharmacist', 6, 'Abel'),
						  											( 'Gam3r', 1, 'Mabel'),
						  											( 'Mechanic', 2 ,'Habel'),
						  											( 'Pilot', 3, 'Fabel'),
						  											( 'MajorLtCorporalGunodeir5thprestigee', 4, 'Zabel'),
						  ( 'Gabel', '1991-01-02', 'hydrated', '2019-01-05', 'Welder', 500, 501 ),
						  ( 'Alorb', '1993-03-04', 'cool',  '2019-01-06', 'Pharmacist', 600, 601 )
						  ( 'Blorb', '1993-03-04', 'cool',  '2019-01-06', 'Pharmacist', 600, 601 ),
						  ( 'Mlorb', '1979-11-22', 'sick', '2019-01-01', 'Gam3r', 100, 101 ),
						  ( 'Hlorb', '1980-09-12', 'fine', '2019-01-02', 'Mechanic', 200, 201 ),
						  ( 'Florb', '1985-03-13', 'hangry', '2019-01-03' ,'Pilot', 300, 301 ),
						  ( 'Zlorb', '1987-04-26', 'placid', '2019-01-04' ,'MajorLtCorporalGunodeir5thprestigee', 400, 401 ),
						  ( 'Glorb', '1991-01-02', 'hydrated', '2019-01-05', 'Welder', 500, 501 ),
						  ( 'Alorb', '1993-03-04', 'cool',  '2019-01-06', 'Pharmacist', 600, 601 );

--employees
ALTER TABLE employees ADD FOREIGN KEY(building_id) REFERENCES buildings(building_id);
 
--supplies
ALTER TABLE supplies ADD FOREIGN KEY(building_id) REFERENCES buildings(building_id);

--customers
ALTER TABLE customers ADD FOREIGN KEY(customer_status_id) REFERENCES sales(sale_id);

ALTER TABLE customers ADD PRIMARY KEY(customer_id); 


