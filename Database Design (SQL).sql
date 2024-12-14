CREATE DATABASE online_store;

USE online_store;

CREATE TABLE customers
(
customer_ID varchar(99) NOT NULL,
first_name varchar(99),
last_name varchar(99),
DOB date,
gender varchar(20),
city varchar(99),
PRIMARY KEY (customer_ID)
);

CREATE TABLE orders
(
order_ID varchar(99) NOT NULL,
order_date date,
customer_ID varchar(99),
product_ID varchar(99) NOT NULL,
order_quantity int,
PRIMARY KEY (order_ID, product_ID)
);

CREATE TABLE payments
(
payment_ID varchar(99) NOT NULL,
order_ID varchar(99),
amount float,
payment_method varchar(99),
PRIMARY KEY (payment_ID)
);


CREATE TABLE products
(
product_ID varchar(99) NOT NULL,
supplier_id int,
product_description varchar(399),
unit_price decimal(10,2),
PRIMARY KEY (product_ID)
);

CREATE TABLE returned
(
return_ID varchar(99) NOT NULL,
order_id varchar(99),
return_date date,
PRIMARY KEY (return_ID)
);

CREATE TABLE stock
(
product_ID varchar(99),
supplier_ID int,
stock_quantity int,
PRIMARY KEY (product_ID)
);

CREATE TABLE region
(
city varchar(199) NOT NULL,
state varchar(199),
country varchar(199),
PRIMARY KEY (city)
);

CREATE TABLE suppliers
(
supplier_id int NOT NULL,
supplier_name varchar(99),
supplier_email varchar(399),
supplier_phone varchar(99),
PRIMARY KEY (supplier_ID)
);

INSERT INTO customers (customer_ID , first_name, last_name, DOB, gender, city)
VALUES('AR-10540', 'Faina', 'Stansell','1998-12-01', 'Female', 'Jackson'),
      ('BP-11290', 'Blondy', 'Orviss', '1992-10-12','Male', 'Jacksonville'),
       ('BW-11110', 'Will', 'Lang', '1979-08-03','Female', 'Seattle'),
       ('CM-12385', 'Tod', 'Frankema', '1967-11-08','Female', 'San Diego'),
       ('CP-12085', 'Chelsy', 'Cowerd', '1987-10-12','Female', 'Jackson'),
       ('CV-12805', 'Lizabeth', 'McLice','1988-11-10', 'Female', 'Johnson City'),
       ('DA-13450', 'Siward', 'Phelipeaux', '1981-03-29', 'Male', 'Philadelphia'),
       ('DB-13120', 'Bryce', 'Frary', '1998-10-31','Female', 'Aurora'),
       ('DL-12865', 'Ginnifer', 'Worssam','1990-08-23', 'Male', 'San Francisco'),
       ('DP-13390', 'Hube', 'Simmig', '1981-08-20','Male', 'New York City'),
       ('DS-13030', 'Editha', 'Shimmings','1968-03-17', 'Male', 'Johnson City'),
       ('FW-14395', 'Agata', 'Bartholat','1973-07-09', 'Female', 'Tuscaloosa'),
       ('GA-14725', 'Peta', 'Gosson', '1975-06-02','Female', 'Vancouver'),
       ('HR-14770', 'Loree', 'Neno', '1977-01-16','Female', 'Johnson City'),
       ('JF-15190', 'Calvin', 'Brislawn','1970-06-06', 'Male', 'San Francisco'),
       ('JF-15490', 'Benjie', 'Vasechkin','1990-04-25', 'Male', 'Hoover'),
       ('JM-15250', 'Niki', 'Archell', '1967-01-07','Male', 'Auburn'),
       ('JO-15145', 'Terrell', 'Suff', '1994-04-11','Female', 'Columbus'),
       ('LS-16945', 'Bethany', 'Benediktsson','1995-07-31', 'Non-Conforming', 'Columbus'),
       ('MH-18115', 'Kessiah', 'Launder','1993-03-22', 'Male', 'Cuyahoga Falls'),
       ('ML-17410', 'Ronny', 'Reye', '1985-09-12','Male', 'Columbus'),
       ('NS-18505', 'Fax', 'Gepheart', '1992-07-17','Female', 'Newark'),
       ('PS-19045', 'Blinny', 'Domange','1979-01-02', 'Female', 'Peoria'),
       ('RB-19570', 'Melissa', 'Bonnor','1995-08-23', 'Male', 'Tyler'),
       ('RM-19375', 'Chrissy', 'Zamudio','1987-03-09', 'Male', 'Winnipeg'),
       ('RS-19420', 'Dalila', 'Stobbs', '1977-11-08','Male', 'Dallas'),
       ('RW-19690', 'Eliot', 'Chatten', '1988-09-30','Male', 'Lowell'),
       ('SC-20095', 'Bibbie', 'Matteoli','1997-06-18', 'Male', 'Lowell'),
       ('SC-20260', 'Ruby', "O'Duilleain",'1986-05-10', 'Female', 'Providence'),
       ('SC-20725', 'Ives', 'Phette', '1988-11-17','Male', 'La Porte'),
       ('SO-20335', 'Richmound', 'Baumber','2000-06-22', 'Male', 'La Porte'),
       ('TB-21250', 'Beauregard', 'Linklater','1994-12-26', 'Male', 'Winnipeg'),
       ('TH-21100', 'Sasha', 'Bassick', '1978-07-18','Male', 'Winnipeg'),
       ('TM-21010', 'Corrina', 'Blooman','1971-10-19', 'Female', 'Winnipeg'),
       ('TP-21565', 'Conrado', 'Baradel','1967-06-19', 'Female', 'Winnipeg'),
       ('TS-21085', 'Cicely', 'Sindle', '1982-07-30','Female', 'Anaheim'),
       ('TS-21655', 'Ninon', 'Jacklings','1973-02-26', 'Female', 'Newark'),
       ('TT-21460', 'Vivia', 'Blackly', '1984-02-07','Female', 'Newark');


INSERT INTO orders (order_ID, order_date, customer_ID, product_ID, order_quantity)
VALUES('US-2023-151750', '2023-02-01', 'JM-15250', 'FUR-CH-10003199', 4),
       ('US-2023-144463', '2023-03-01', 'SC-20725', 'FUR-FU-10001215',11),
       ('US-2023-151750', '2023-01-01', 'JM-15250', 'FUR-FU-10002116', 5),
       ('US-2023-107503', '2023-01-01', 'GA-14725', 'FUR-FU-10003878', 4),
       ('US-2023-151750', '2023-01-01', 'JM-15250', 'OFF-AP-10004708', 2),
       ('US-2023-151750', '2023-01-01', 'JM-15250', 'OFF-AR-10003158', 4),
       ('US-2023-151750', '2023-01-01', 'JM-15250', 'OFF-BI-10000301', 5),
       ('US-2023-151750', '2023-01-01', 'JM-15250', 'OFF-BI-10000343',14),
       ('US-2023-154466', '2023-01-01', 'DP-13390', 'OFF-BI-10002012', 2),
       ('US-2023-151750', '2023-01-01', 'JM-15250', 'OFF-ST-10002743', 5),
       ('US-2023-147207', '2023-01-02', 'TS-21655', 'FUR-TA-10002958', 5),
       ('US-2023-147207', '2023-01-02', 'TS-21655', 'OFF-AP-10000027', 2),
       ('US-2023-147207', '2023-01-02', 'TS-21655', 'OFF-AR-10001955', 2),
       ('US-2023-113481', '2023-01-02', 'AS-10045', 'OFF-BI-10000474', 6),
       ('US-2023-113481', '2023-01-02', 'AS-10045', 'OFF-BI-10003694', 5),
       ('US-2023-147207', '2023-01-02', 'TS-21655', 'OFF-ST-10002615', 3),
       ('US-2023-118668', '2023-01-02', 'FW-14395', 'TEC-AC-10000682', 1),
       ('US-2023-113481', '2023-01-02', 'AS-10045', 'TEC-MA-10002178', 2),
       ('US-2023-111738', '2023-01-03', 'CM-12385', 'OFF-AR-10000817', 3),
       ('US-2023-111738', '2023-01-03', 'CM-12385', 'OFF-BI-10004584', 8),
       ('US-2023-114034', '2023-01-03', 'DL-13315', 'OFF-PA-10004735', 6),
       ('US-2023-150931', '2023-01-06', 'DP-13390', 'OFF-BI-10004728', 7),
       ('US-2023-168690', '2023-01-07', 'TS-21085', 'OFF-BI-10000145', 3),
       ('US-2023-123862', '2023-01-07', 'JF-15190', 'OFF-FA-10003112', 1),
       ('US-2023-123862', '2023-01-07', 'JF-15190', 'OFF-ST-10000760',11),
       ('US-2023-123862', '2023-01-07', 'JF-15190', 'OFF-ST-10002301', 3),
       ('US-2023-123862', '2023-01-07', 'JF-15190', 'OFF-SU-10004884', 7),
       ('US-2023-159366', '2023-01-07', 'BW-11110', 'TEC-MA-10000822', 2),
       ('US-2023-115154', '2023-01-08', 'RS-19420', 'FUR-TA-10001950', 2),
       ('US-2023-154760', '2023-01-09', 'BP-11290', 'OFF-BI-10004632', 3),
       ('US-2023-158512', '2023-01-12', 'DA-13450', 'FUR-FU-10004973', 2),
       ('US-2023-148551', '2023-01-12', 'DB-13120', 'OFF-BI-10000545', 5),
       ('US-2023-108000', '2023-01-12', 'LS-16945', 'OFF-EN-10002621', 1),
       ('US-2023-158512', '2023-01-12', 'DA-13450', 'OFF-PA-10001804', 6),
       ('US-2023-167402', '2023-01-13', 'CP-12085', 'FUR-BO-10001608', 3),
       ('US-2023-167402', '2023-01-13', 'CP-12085', 'OFF-AR-10004010', 6),
       ('US-2023-167402', '2023-01-13', 'CP-12085', 'OFF-PA-10004983', 5),
       ('US-2023-167402', '2023-01-13', 'CP-12085', 'OFF-SU-10002881', 5),
       ('US-2023-113278', '2023-01-14', 'HR-14770', 'FUR-FU-10001037', 2),
       ('US-2023-127306', '2023-01-14', 'BH-11710', 'OFF-BI-10002003', 5),
       ('US-2023-127306', '2023-01-14', 'BH-11710', 'OFF-BI-10003727', 2),
       ('US-2023-127306', '2023-01-14', 'BH-11710', 'OFF-EN-10001219', 3),
       ('US-2023-138779', '2023-01-14', 'RB-19570', 'OFF-EN-10002504', 1),
       ('US-2023-113278', '2023-01-14', 'HR-14770', 'OFF-FA-10003472', 2),
       ('US-2023-127306', '2023-01-14', 'BH-11710', 'OFF-PA-10000019', 7),
       ('US-2023-149076', '2023-01-14', 'SO-20335', 'OFF-PA-10000483', 5),
       ('US-2023-113278', '2023-01-14', 'HR-14770', 'OFF-PA-10004156', 1),
       ('US-2023-113278', '2023-01-14', 'HR-14770', 'OFF-ST-10001590', 5),
       ('US-2023-113278', '2023-01-14', 'HR-14770', 'OFF-ST-10002562', 2),
       ('US-2023-106131', '2023-01-14', 'TP-21565', 'OFF-ST-10003638', 9),
       ('US-2023-113278', '2023-01-14', 'HR-14770', 'TEC-AC-10001445', 4),
       ('US-2023-106131', '2023-01-14', 'TP-21565', 'TEC-AC-10003027', 7),
       ('US-2023-113278', '2023-01-14', 'HR-14770', 'TEC-AC-10004469', 4),
       ('US-2023-113278', '2023-01-14', 'HR-14770', 'TEC-PH-10000169', 4),
       ('US-2023-127306', '2023-01-14', 'BH-11710', 'TEC-PH-10001924', 2),
       ('US-2023-138779', '2023-01-14', 'RB-19570', 'TEC-PH-10003655', 5),
       ('US-2023-167752', '2023-01-15', 'RW-19690', 'OFF-AP-10000159', 1),
       ('US-2023-167752', '2023-01-15', 'RW-19690', 'OFF-AP-10002945', 8),
       ('US-2023-160934', '2023-01-15', 'TT-21460', 'OFF-AR-10003504', 5),
       ('US-2023-104661', '2023-01-15', 'TB-21250', 'OFF-BI-10001098', 1),
       ('US-2023-104661', '2023-01-15', 'TB-21250', 'OFF-BI-10001597', 4),
       ('US-2023-152961', '2023-01-15', 'SC-20095', 'OFF-PA-10004675', 2),
       ('US-2023-104661', '2023-01-15', 'TB-21250', 'TEC-AC-10002331', 8),
       ('US-2023-104661', '2023-01-15', 'TB-21250', 'TEC-AC-10003628', 2),
       ('US-2023-138289', '2023-01-16', 'AR-10540', 'FUR-CH-10004626', 3),
       ('US-2023-125913', '2023-01-16', 'JO-15145', 'FUR-FU-10001487', 4),
       ('US-2023-125913', '2023-01-16', 'JO-15145', 'FUR-TA-10001520', 7),
       ('US-2023-138289', '2023-01-16', 'AR-10540', 'OFF-BI-10004995', 4),
       ('US-2023-138289', '2023-01-16', 'AR-10540', 'OFF-PA-10001260', 7),
       ('CA-2023-121451', '2023-01-17', 'SC-20260', 'OFF-AR-10003183', 2),
       ('US-2023-153045', '2023-01-19', 'NS-18505', 'FUR-CH-10000309', 3),
       ('US-2023-153045', '2023-01-19', 'NS-18505', 'FUR-FU-10002759', 2),
       ('US-2023-127292', '2023-01-19', 'RM-19375', 'OFF-AP-10000828', 3),
       ('US-2023-127292', '2023-01-19', 'RM-19375', 'OFF-EN-10001509', 1),
       ('US-2023-154718', '2023-01-19', 'DL-12865', 'OFF-LA-10003714', 2),
       ('US-2023-127292', '2023-01-19', 'RM-19375', 'OFF-PA-10000157', 4),
       ('US-2023-127292', '2023-01-19', 'RM-19375', 'OFF-PA-10001970', 1),
       ('US-2023-153045', '2023-01-19', 'NS-18505', 'OFF-PA-10003673', 4),
       ('US-2023-153045', '2023-01-19', 'NS-18505', 'TEC-PH-10001817', 2),
       ('US-2023-157252', '2023-01-20', 'CV-12805', 'FUR-CH-10003396', 3),
       ('US-2023-120649', '2023-01-20', 'JF-15490', 'OFF-AR-10001545', 2),
       ('US-2023-144589', '2023-01-20', 'TM-21010', 'OFF-AR-10003631', 5),
       ('US-2023-152079', '2023-01-20', 'ML-17410', 'OFF-LA-10001613', 5),
       ('US-2023-144589', '2023-01-20', 'TM-21010', 'TEC-PH-10003072', 3),
       ('US-2023-161809', '2023-01-20', 'TH-21100', 'TEC-PH-10004922', 3),
       ('US-2023-131954', '2023-01-21', 'DS-13030', 'FUR-BO-10001619', 1),
       ('US-2023-131954', '2023-01-21', 'DS-13030', 'OFF-BI-10000138', 5),
       ('US-2023-127026', '2023-01-21', 'MH-18115', 'OFF-BI-10000546', 5),
       ('US-2023-127026', '2023-01-21', 'MH-18115', 'OFF-BI-10001196', 4),
       ('US-2023-131954', '2023-01-21', 'DS-13030', 'OFF-BI-10003291', 4),
       ('US-2023-131954', '2023-01-21', 'DS-13030', 'OFF-BI-10003982', 6),
       ('US-2023-160423', '2023-01-21', 'PS-19045', 'OFF-BI-10004001', 7),
       ('US-2023-141782', '2023-01-21', 'BE-11410', 'OFF-EN-10002230', 4),
       ('US-2023-131954', '2023-01-21', 'DS-13030', 'OFF-ST-10000736', 3),
       ('US-2023-160423', '2023-01-21', 'PS-19045', 'OFF-ST-10004340', 7),
       ('US-2023-127026', '2023-01-21', 'MH-18115', 'TEC-AC-10002049', 5),
       ('US-2023-131954', '2023-01-21', 'DS-13030', 'TEC-AC-10003610', 3),
       ('US-2023-127026', '2023-01-21', 'MH-18115', 'TEC-MA-10002981', 3),
       ('US-2023-127026', '2023-01-21', 'MH-18115', 'TEC-PH-10003601', 1);


INSERT INTO payments (payment_ID, order_ID, amount, payment_method)
VALUES('TR1001-01', 'CA-2023-121451', 6.68, 'diners-club-us-ca'),
       ('TR1001-02', 'US-2023-104661', 147.64, 'jcb'),
       ('TR1001-03', 'US-2023-106131', 337.69, 'bankcard'),
       ('TR1001-04', 'US-2023-107503', 48.99, 'visa-electron'),
       ('TR1001-05', 'US-2023-108000', 9.78, 'diners-club-enroute'),
       ('TR1001-06', 'US-2023-111738', 2031.39, 'bankcard'),
       ('TR1001-07', 'US-2023-113278', 358.79, 'jcb'),
       ('TR1001-08', 'US-2023-113481', 740.21, 'diners-club-enroute'),
       ('TR1001-09', 'US-2023-114034', 38.88, 'jcb'),
       ('TR1001-10', 'US-2023-115154', 892.98, 'jcb'),
       ('TR1001-11', 'US-2023-118668', 16.59, 'americanexpress'),
       ('TR1001-12', 'US-2023-120649', 3.52, 'mastercard'),
       ('TR1001-13', 'US-2023-123862', 332.89, 'jcb'),
       ('TR1001-14', 'US-2023-125913', 427.59, 'jcb'),
       ('TR1001-15', 'US-2023-127026', 1239.83, 'bankcard'),
       ('TR1001-16', 'US-2023-127292', 637.18, 'jcb'),
       ('TR1001-17', 'US-2023-127306', 175.09, 'mastercard'),
       ('TR1001-18', 'US-2023-131954', 654.24, 'jcb'),
       ('TR1001-19', 'US-2023-138289', 5802.79, 'americanexpress'),
       ('TR1001-20', 'US-2023-138779', 29.66, 'jcb'),
       ('TR1001-21', 'US-2023-141782', 268.58, 'jcb'),
       ('TR1001-22', 'US-2023-144463', 474.43, 'visa-electron'),
       ('TR1001-23', 'US-2023-144589', 384.18, 'jcb'),
       ('TR1001-24', 'US-2023-147207', 1322.75, 'jcb'),
       ('TR1001-25', 'US-2023-148551', 760.98, 'bankcard'),
       ('TR1001-26', 'US-2023-149076', 154.99, 'china-unionpay'),
       ('TR1001-27', 'US-2023-150931', 33.74, 'jcb'),
       ('TR1001-28', 'US-2023-151750', 954.99, 'mastercard'),
       ('TR1001-29', 'US-2023-152079', 11.52, 'diners-club-enroute'),
       ('TR1001-30', 'US-2023-152961', 12.79, 'americanexpress'),
       ('TR1001-31', 'US-2023-153045', 1370.54, 'diners-club-us-ca'),
       ('TR1001-32', 'US-2023-154466', 3.69, 'instapayment'),
       ('TR1001-33', 'US-2023-154718', 6.09, 'mastercard'),
       ('TR1001-34', 'US-2023-154760', 274.49, 'china-unionpay'),
       ('TR1001-35', 'US-2023-157252', 207.85, 'mastercard'),
       ('TR1001-36', 'US-2023-158512', 77.76, 'jcb'),
       ('TR1001-37', 'US-2023-159366', 3059.98, 'mastercard'),
       ('TR1001-38', 'US-2023-160423', 383.99, 'jcb'),
       ('TR1001-39', 'US-2023-160934', 21.49, 'visa-electron'),
       ('TR1001-40', 'US-2023-161809', 160.78, 'jcb'),
       ('TR1001-41', 'US-2023-167402', 4619.33, 'jcb'),
       ('TR1001-42', 'US-2023-167752', 1958.54, 'mastercard'),
       ('TR1001-43', 'US-2023-168690', 2.81, 'diners-club-us-ca');
TRUNCATE products;       
INSERT INTO products (product_ID, supplier_ID, product_description, unit_price)
VALUES('FUR-CH-10003199', 52,'Office Star - Contemporary Task Swivel Chair', 77.69),
       ('FUR-FU-10001215', 7,'Howard Miller 11-1/2" Diameter Brentwood Wall Clock', 43.13),
       ('FUR-FU-10002116', 9,'Tenex Carpeted, Granite-Look or Clear Contemporary Contour Shape Chair Mats',28.28),
       ('FUR-FU-10003878', 13, 'Linden 10" Round Wall Clock, Black',12.22),
       ('OFF-AP-10004708', 51,'Fellowes Superior 10 Outlet Split Surge Protector', 7.61),
       ('OFF-AR-10003158', 4, 'Fluorescent Highlighters by Dixon', 3.18),
       ('OFF-BI-10000301', 50, 'GBC Instant Report Kit', 1.29),
       ('OFF-BI-10000343', 47,'Pressboard Covers with Storage Hooks, 9 1/2" x 11", Light Blue',0.98),
       ('OFF-BI-10002012', 38, 'Wilson Jones Easy Flow II Sheet Lifters',1.8),
       ('OFF-ST-10002743', 2, 'SAFCO Boltless Steel Shelving', 90.91),
       ('FUR-TA-10002958', 24, 'Bevis Oval Conference Table, Walnut',182.69),
       ('OFF-AP-10000027', 14, 'Hoover Commercial SteamVac', 2.72),
       ('OFF-AR-10001955', 4, 'Newell 319', 15.87),
       ('OFF-BI-10000474', 53,'Avery Recycled Flexi-View Covers for Binding Systems', 4.81),
       ('OFF-BI-10003694', 47,'Avery 3 1/2" Diskette Storage Pages, 10/Pack', 3.13),
       ('OFF-ST-10002615', 100, 'Dual Level, Single-Width Filing Carts',124.05),
       ('TEC-AC-10000682', 36,'Kensington K72356US Mouse-in-a-Box USB Desktop Mouse', 16.59),
       ('TEC-MA-10002178', 27,'Cisco CP-7937G Unified IP Conference Station Phone', 347.85),
       ('OFF-AR-10000817', 38, 'Manco Dry-Lighter Erasable Highlighter',3.04),
       ('OFF-BI-10004584', 46,'GBC ProClick 150 Presentation Binding System', 252.78),
       ('OFF-PA-10004735', 59, 'Xerox 1905', 6.48),
       ('OFF-BI-10004728', 33,'Wilson Jones Turn Tabs Binder Tool for Ring Binders', 4.82),
       ('OFF-BI-10000145', 18, 'Zipper Ring Binder Pockets', 0.94),
       ('OFF-FA-10003112', 78, 'Staples', 7.89),
       ('OFF-ST-10000760', 34, "Eldon Fold 'N Roll Cart System", 13.98),
       ('OFF-ST-10002301', 1, 'Tennsco Commercial Shelving', 20.34),
       ('OFF-SU-10004884', 49,'Acme Galleria Hot Forged Steel Scissors with Colored Handles',15.73),
       ('TEC-MA-10000822', 38,'Lexmark MX611dhe Monochrome Laser Printer', 1529.99),
       ('FUR-TA-10001950', 93, 'Balt Solid Wood Round Tables', 446.49),
       ('OFF-BI-10004632', 91, 'Ibico Hi-Tech Manual Binding System',91.5),
       ('FUR-FU-10004973', 4, 'Flat Face Poster Frame', 18.84),
       ('OFF-BI-10000545', 93,'GBC Ibimaster 500 Manual ProClick Binding System', 152.2),
       ('OFF-EN-10002621', 85, 'Staple envelope', 9.78),
       ('OFF-PA-10001804', 68, 'Xerox 195', 6.68),
       ('FUR-BO-10001608', 43, 'Hon Metal Bookcases, Black', 70.98),
       ('OFF-AR-10004010', 28,'Hunt Boston Vacuum Mount KS Pencil Sharpener', 34.99),
       ('OFF-PA-10004983', 11, 'Xerox 23', 6.48),
       ('OFF-SU-10002881', 83,'Martin Yale Chadless Opener Electric Letter Opener', 832.81),
       ('FUR-FU-10001037', 100,'DAX Charcoal/Nickel-Tone Document Frame, 5 x 7', 9.48),
       ('OFF-BI-10002003', 81,'Ibico Presentation Index for Binding Systems', 1.19),
       ('OFF-BI-10003727', 17,'Avery Durable Slant Ring Binders With Label Holder', 1.25),
       ('OFF-EN-10001219', 18,'#10- 4 1/8" x 9 1/2" Security-Tint Envelopes', 6.11),
       ('OFF-EN-10002504', 51,'Tyvek  Top-Opening Peel & Seel Envelopes, Plain White', 21.74),
       ('OFF-FA-10003472', 65, 'Bagged Rubber Bands', 1.26),
       ('OFF-PA-10000019', 3, 'Xerox 1931', 5.18),
       ('OFF-PA-10000483', 17, 'Xerox 19', 30.98),
       ('OFF-PA-10004156', 37, 'Xerox 188', 11.34),
       ('OFF-ST-10001590', 80,'Tenex Personal Project File with Scoop Front Design, Black',13.48),
       ('OFF-ST-10002562', 78, 'Staple magnet', 9.38),
       ('OFF-ST-10003638', 69, 'Mobile Personal File Cube', 18.74),
       ('TEC-AC-10001445', 33,'Imation\xa0USB 2.0 Swivel\xa0Flash Drive\xa0USB\xa0flash drive\xa0- 4 GB - Pink',3.03),
       ('TEC-AC-10003027', 30,'Imation\xa08GB Mini TravelDrive USB 2.0\xa0Flash Drive', 24.15),
       ('TEC-AC-10004469', 13, 'Microsoft Sculpt Comfort Mouse', 39.95),
       ('TEC-PH-10000169', 23,'ARKON Windshield Dashboard Air Vent Car Mount Holder', 16.95),
       ('TEC-PH-10001924', 7, 'iHome FM Clock Radio with Lightning Dock',55.99),
       ('OFF-AP-10000159', 73, 'Belkin F9M820V08 8 Outlet Surge', 34.38),
       ('OFF-AP-10002945', 32,"Honeywell Enviracaire Portable HEPA Air Cleaner for 17' x 22' Room",240.52),
       ('OFF-AR-10003504', 35, 'Newell 347', 4.28),
       ('OFF-BI-10001098', 6, 'Acco D-Ring Binder w/DublLock', 4.28),
       ('OFF-BI-10001597', 16,'Wilson Jones Ledger-Size, Piano-Hinge Binder, 2", Blue', 8.2),
       ('OFF-PA-10004675', 5,'Telephone Message Books with Fax/Mobile Section, 5 1/2" x 3 3/16"',6.35),
       ('TEC-AC-10002331', 82, 'Maxell 74 Minute CDR, 10/Pack', 7.82),
       ('TEC-AC-10003628', 61,'Logitech 910-002974 M325 Wireless Mouse for Web Scrolling',23.99),
       ('FUR-CH-10004626', 41,'Office Star Flex Back Scooter Chair with Aluminum Finish Frame',100.89),
       ('FUR-FU-10001487', 56,'Eldon Expressions Wood and Plastic Desk Accessories, Cherry Wood',6.98),
       ('FUR-TA-10001520', 40,'Lesro Sheffield Collection Coffee Table, End Table, Center Table, Corner Table',57.1),
       ('OFF-BI-10004995', 60,'GBC DocuBind P400 Electric Binding System', 1360.99),
       ('OFF-PA-10001260', 50,'TOPS Money Receipt Book, Consecutively Numbered in Red,', 8.01),
       ('OFF-AR-10003183', 29,'Avery Fluorescent Highlighter Four-Color Set', 3.34),
       ('FUR-CH-10000309', 49, 'Global Comet Stacking Arm Chair', 295.76),
       ('FUR-FU-10002759', 89, '12-1/2 Diameter Round Wall Clock', 15.98),
       ('OFF-AP-10000828', 52, 'Avanti 4.4 Cu. Ft. Refrigerator', 180.98),
       ('OFF-EN-10001509', 36, 'Poly String Tie Envelopes', 2.04),
       ('OFF-LA-10003714', 96, 'Avery 510', 3.0),
       ('OFF-PA-10000157', 85, 'Xerox 191', 19.98),
       ('OFF-PA-10001970', 34, 'Xerox 1881', 12.28),
       ('OFF-PA-10003673', 49, 'Strathmore Photo Mount Cards', 5.42),
       ('TEC-PH-10001817', 83,'Wilson Electronics DB Pro Signal Booster', 214.8),
       ('FUR-CH-10003396', 50, 'Global Deluxe Steno Chair', 69.28),
       ('OFF-AR-10001545', 36, 'Newell 326', 1.76),
       ('OFF-AR-10003631', 32, 'Staples in misc. colors', 4.84),
       ('OFF-LA-10001613', 10, 'Avery File Folder Labels', 2.3),
       ('TEC-PH-10003072', 100,'Panasonic KX-TG9541B DECT 6.0 Digital 2-Line Expandable Cordless Phone With Digital Answering System',119.99),
       ('FUR-BO-10001619', 33,"O'Sullivan Cherrywood Estates Traditional Bookcase", 84.98),
       ('OFF-BI-10000138', 14, 'Acco Translucent Poly Ring Binders',3.74),
       ('OFF-BI-10000546', 57, 'Avery Durable Binders', 2.88),
       ('OFF-BI-10001196', 98, 'Avery Flip-Chart Easel Binder, Black',22.38),
       ('OFF-BI-10003291', 63,'Wilson Jones Leather-Like Binders with DublLock Round Rings',6.98),
       ('OFF-BI-10003982', 71,'Wilson Jones Century Plastic Molded Ring Binders', 16.62),
       ('OFF-BI-10004001', 81, 'GBC Recycled VeloBinder Covers', 5.11),
       ('OFF-EN-10002230', 28, 'Airmail Envelopes', 67.14),
       ('OFF-ST-10000736', 22,'Carina Double Wide Media Storage Towers in Natural & Black',80.98),
       ('OFF-ST-10004340', 89, 'Fellowes Mobile File Cart, Black', 49.74),
       ('TEC-AC-10002049', 39,'Logitech G19 Programmable Gaming Keyboard', 123.99),
       ('TEC-AC-10003610', 19, 'Logitech\xa0Illuminated - Keyboard',59.99),
       ('TEC-MA-10002981', 80,'I.R.I.S IRISCard Anywhere 5 Card Scanner', 116.99),
       ('TEC-PH-10003601', 7,'Ativa D5772 2-Line 5.8GHz Digital Expandable Corded/Cordless Phone System with Answering & Caller ID/Call Waiting, Black/Silver',164.99);

INSERT INTO region (city, state, country)
VALUES('Aurora', 'Colorado', 'United States'),
       ('Austin', 'Texas', 'United States'),
       ('Burlington', 'Vermont', 'United States'),
       ('Charlotte', 'North Carolina', 'United States'),
       ('Chicago', 'Illinois', 'United States'),
       ('Dallas', 'Texas', 'United States'),
       ('Detroit', 'Michigan', 'United States'),
       ('El Paso', 'Texas', 'United States'),
       ('Franklin', 'Wisconsin', 'United States'),
       ('Huntsville', 'Texas', 'United States'),
       ('Jackson', 'Michigan', 'United States'),
       ('Jacksonville', 'North Carolina', 'United States'),
       ('Johnson City', 'Tennessee', 'United States'),
       ('Keller', 'Texas', 'United States'),
       ('Long Beach', 'California', 'United States'),
       ('Lorain', 'Ohio', 'United States'),
       ('Los Angeles', 'California', 'United States'),
       ('Montreal', 'Quebec', 'Canada'),
       ('New York City', 'New York', 'United States'),
       ('Ormond Beach', 'Florida', 'United States'),
       ('Philadelphia', 'Pennsylvania', 'United States'),
       ('Quincy', 'Massachusetts', 'United States'),
       ('Rancho Cucamonga', 'California', 'United States'),
       ('Richmond', 'Indiana', 'United States'),
       ('San Francisco', 'California', 'United States'),
       ('Seattle', 'Washington', 'United States'),
       ('Springfield', 'Missouri', 'United States'),
       ('Tuscaloosa', 'Alabama', 'United States'),
       ('Washington', 'District of Columbia', 'United States'),
       ('Waterbury', 'Connecticut', 'United States');

INSERT INTO returned (return_ID, order_ID, return_date)
VALUES (4262242994, 'US-2023-151750', '2023-09-01'),
       (6651694537, 'US-2023-111738', '2023-10-01'),
       (7858302507, 'US-2023-123862', '2023-11-01'),
       (7625546802, 'US-2023-167402', '2023-01-17'),
       (9849891033, 'US-2023-167752', '2023-01-19'),
       (3517055131, 'US-2023-149076', '2023-01-20'),
       (6774709869, 'US-2023-138289', '2023-01-22'),
       (5167008972, 'US-2023-153045', '2023-01-25'),
       (2698264624, 'US-2023-127026', '2023-01-25'),
       (5865654829, 'US-2023-131954', '2023-01-27'),
       (4219435557, 'US-2023-157252', '2023-01-28'),
       (6287734086, 'US-2023-160423', '2023-01-30'),
       (2126858219, 'US-2023-160934', '2023-01-30'),
       (4332168135, 'US-2023-144589', '2023-01-31');
       
INSERT INTO stock (supplier_ID, product_ID, stock_quantity)
VALUES (1, 'OFF-BI-10001597', 205),
       (4, 'TEC-AC-10003628', 282),
       (4, 'FUR-CH-10000309', 229),
       (4, 'OFF-AR-10001545', 280),
       (5, 'OFF-BI-10000545', 247),
       (5, 'OFF-BI-10004995', 204),
       (5, 'OFF-BI-10001196', 95),
       (6, 'TEC-MA-10000822', 119),
       (6, 'OFF-BI-10002003', 199),
       (6, 'FUR-CH-10003396', 51),
       (7, 'OFF-AR-10001955', 229),
       (9, 'TEC-MA-10002981', 59),
       (10, 'OFF-BI-10003291', 30),
       (11, 'OFF-BI-10000546', 13),
       (12, 'OFF-PA-10004983', 26),
       (12, 'OFF-EN-10001219', 89),
       (15, 'OFF-FA-10003112', 238),
       (16, 'OFF-EN-10001509', 54),
       (17, 'OFF-ST-10002615', 87),
       (17, 'FUR-BO-10001619', 139),
       (21, 'OFF-ST-10002743', 150),
       (21, 'FUR-FU-10001037', 216),
       (21, 'FUR-FU-10002759', 167),
       (22, 'FUR-TA-10001950', 183),
       (23, 'OFF-ST-10001590', 153),
       (23, 'OFF-PA-10001260', 161),
       (25, 'OFF-BI-10000145', 213),
       (25, 'OFF-ST-10000760', 91),
       (25, 'OFF-BI-10003727', 90),
       (30, 'OFF-AP-10004708', 116),
       (30, 'OFF-ST-10000736', 256),
       (31, 'OFF-BI-10004728', 298),
       (33, 'OFF-AP-10000027', 36),
       (33, 'TEC-AC-10004469', 159),
       (33, 'TEC-AC-10002331', 75),
       (35, 'OFF-BI-10003982', 269),
       (37, 'OFF-SU-10004884', 189),
       (41, 'TEC-AC-10000682', 247),
       (41, 'OFF-PA-10000483', 196),
       (42, 'OFF-AR-10000817', 12),
       (44, 'TEC-PH-10001924', 2),
       (46, 'FUR-CH-10003199', 265),
       (46, 'OFF-AR-10003158', 258),
       (46, 'OFF-PA-10001804', 177),
       (46, 'OFF-AR-10003183', 174),
       (48, 'OFF-EN-10002504', 147),
       (48, 'TEC-AC-10002049', 138),
       (49, 'OFF-PA-10004735', 165),
       (49, 'FUR-CH-10004626', 290),
       (49, 'OFF-LA-10001613', 87),
       (49, 'OFF-EN-10002230', 290),
       (50, 'TEC-MA-10002178', 76),
       (50, 'OFF-ST-10002562', 278),
       (50, 'OFF-AP-10000828', 207),
       (50, 'TEC-PH-10001817', 144),
       (53, 'OFF-ST-10003638', 24),
       (55, 'FUR-FU-10001215', 273),
       (56, 'OFF-BI-10001098', 150),
       (57, 'FUR-FU-10004973', 150),
       (57, 'OFF-AP-10000159', 101),
       (58, 'FUR-FU-10001487', 226),
       (60, 'OFF-PA-10004675', 142),
       (61, 'OFF-SU-10002881', 200),
       (64, 'TEC-AC-10003027', 227),
       (65, 'OFF-ST-10002301', 3),
       (66, 'OFF-EN-10002621', 206),
       (69, 'OFF-ST-10004340', 259),
       (70, 'TEC-PH-10003601', 275),
       (71, 'OFF-BI-10000343', 211),
       (71, 'OFF-BI-10000474', 121),
       (71, 'TEC-AC-10001445', 153),
       (72, 'OFF-AR-10004010', 9),
       (72, 'OFF-AR-10003504', 109),
       (72, 'OFF-BI-10004001', 33),
       (74, 'FUR-FU-10002116', 214),
       (75, 'FUR-TA-10002958', 254),
       (75, 'OFF-PA-10000019', 69),
       (78, 'OFF-BI-10002012', 295),
       (80, 'OFF-BI-10004632', 239),
       (81, 'OFF-PA-10004156', 276),
       (82, 'OFF-LA-10003714', 134),
       (82, 'OFF-PA-10003673', 50),
       (82, 'OFF-AR-10003631', 6),
       (83, 'OFF-PA-10000157', 127),
       (85, 'OFF-FA-10003472', 34),
       (85, 'FUR-TA-10001520', 221),
       (87, 'OFF-BI-10003694', 29),
       (87, 'TEC-PH-10000169', 272),
       (88, 'OFF-BI-10000138', 260),
       (89, 'OFF-AP-10002945', 113),
       (91, 'OFF-BI-10004584', 135),
       (91, 'FUR-BO-10001608', 252),
       (94, 'OFF-PA-10001970', 100),
       (98, 'FUR-FU-10003878', 175),
       (98, 'OFF-BI-10000301', 206),
       (99, 'TEC-PH-10003072', 17),
       (100, 'TEC-AC-10003610', 191);

INSERT INTO suppliers (supplier_ID, supplier_name, supplier_email, supplier_phone)
VALUES (1, 'Abernathy, Ankunding and Hammes','ddobrovolskit@stanford.edu', '129-213-4072'),
       (2, 'Auer Inc', 'jreford2g@blogtalkradio.com', '309-631-5157'),
       (3, 'Bahringer-Beatty', 'dvelasquezu@comcast.net', '743-118-2981'),
       (4, 'Bahringer, Klein and Cruickshank', 'flandal1k@topsy.com','600-634-5220'),
       (5, 'Bailey Inc', 'dduro26@admin.ch', '896-800-0714'),
       (6, 'Bailey LLC', 'zganter1n@examiner.com', '214-519-1966'),
       (7, 'Bartell, Zemlak and Olson', 'codea25@apache.org','765-564-6118'),
       (9, 'Bayer LLC', 'rpiccop23@acquirethisname.com', '600-531-5971'),
       (10, 'Beatty Inc', 'mblaiklock1g@wp.com', '198-471-8818'),
       (11, 'Beatty LLC', 'ppoff1j@globo.com', '887-530-9797'),
       (13, 'Bergnaum LLC', 'pmarney20@nbcnews.com', '249-799-3559'),
       (14, 'Botsford, Dickens and Walter', 'smcdonogh1d@squidoo.com','356-561-4648'),
       (16, 'Brekke LLC', 'tmolines1m@posterous.com', '727-160-7198'),
       (17, 'Bruen, Moen and Becker', 'rvinten11@java.com','903-971-0971'),
       (18, 'Champlin-Heaney', 'ddinis2q@jimdo.com', '323-794-0846'),
       (19, 'Cole-Larkin', 'pmunby6@netvibes.com', '579-724-1171'),
       (22, 'Connelly, Kiehn and Schinner', 'rditchburn1e@bloglines.com','420-113-7779'),
       (23, 'Corkery, Hoppe and Volkman', 'boels1p@mashable.com','784-266-8006'),
       (24, 'Dare-Powlowski', 'rmorshead1z@creativecommons.org','275-691-3690'),
       (27, 'Dooley-Walter', 'fgresonw@nyu.edu', '532-216-0617'),
       (28, 'Doyle-Cummings', 'lleethem1@delicious.com', '408-929-0996'),
       (29, 'DuBuque, Donnelly and Maggio', 'bclawb@constantcontact.com','427-713-8393'),
       (30, 'Ebert-Cassin', 'speltzg@harvard.edu', '155-424-5429'),
       (32, 'Feest, Predovic and Pollich', 'smabee1o@tripadvisor.com','118-792-8436'),
       (33, "Franecki, D'Amore and Kemmer", 'rtrahmel1u@smh.com.au','298-537-0918'),
       (34, 'Fritsch-Terry', 'phuntley1r@elpais.com', '310-107-0529'),
       (35, 'Fritsch, Jenkins and Morar', 'nprugelm@sun.com','984-118-5100'),
       (36, 'Gerhold, Yundt and Upton', 'apettengell2@wikimedia.org','296-386-4513'),
       (37, 'Gibson Group', 'estempe13@hexun.com', '405-206-6420'),
       (38, 'Greenholt-Green', 'irultonv@ed.gov', '198-753-9136'),
       (39, 'Gutkowski Inc', 'amcclymonth@ifeng.com', '396-477-8242'),
       (40, 'Gutkowski Inc', 'jwetheraldq@intel.com', '422-246-9085'),
       (41, 'Hackett-Fay', 'bpollicatt17@wired.com', '270-395-5259'),
       (43, 'Hauck-Torp', 'echolton2r@google.co.uk', '978-655-2180'),
       (44, 'Heller-Roberts', 'sculkine@google.cn', '377-619-2085'),
       (45, 'Herman, Corkery and Kautzer', 'lshowl1x@linkedin.com','416-894-7652'),
       (46, 'Howe-Hudson', 'aculletono@ed.gov', '726-623-7362'),
       (47, 'Howe-Muller', 'abachelar5@bbb.org', '633-929-6570'),
       (49, 'Jacobi and Sons', 'rpatshull0@e-recht24.de', '458-924-9509'),
       (50, 'Jerde, Hoeger and Turcotte', 'acrowche3@senate.gov','285-647-7530'),
       (51, 'Keebler-Walker', 'omooney2h@meetup.com', '834-978-0836'),
       (52, 'Kerluke LLC', 'amcharry19@php.net', '941-793-5021'),
       (53, 'Kerluke-Rau', 'hshilburne18@studiopress.com','854-900-6402'),
       (56, 'Kilback, Cremin and Beatty', 'lkinman1q@google.cn','942-738-5607'),
       (57, 'Kirlin, Streich and Koepp', 'cfevier2j@cbc.ca','365-637-5509'),
       (59, 'Koepp LLC', 'dpeckettd@bing.com', '163-282-3148'),
       (60, 'Koepp, Gorczany and Deckow', 'tmcshirie2a@amazon.com','853-904-5732'),
       (61, 'Konopelski-Okuneva', 'sperkinsy@nasa.gov', '501-483-3234'),
       (63, 'Kuvalis, Gusikowski and Lynch', 'cdripp29@prnewswire.com','543-213-6752'),
       (65, 'Legros and Sons', 'ofossick1c@goo.gl', '365-701-5546'),
       (68, 'Marquardt Inc', 'abarczewskia@princeton.edu','179-326-4365'),
       (69, 'McClure, Kemmer and Luettgen', 'acouroy2c@wordpress.com','640-358-3899'),
       (71, 'McLaughlin, Langosh and Stokes', 'ksyversen9@ustream.tv','807-420-3730'),
       (73, 'Mueller, Skiles and Emard', 'csoff7@uol.com.br','935-797-2777'),
       (78, 'Renner-Friesen', 'gshepland1b@amazon.de', '405-358-5576'),
       (80, 'Rutherford Group', 'dgoundsy2k@wired.com', '778-644-5980'),
       (81, 'Sauer, West and Schumm', 'cbukowski16@mayoclinic.com','506-220-8349'),
       (82, 'Schaefer and Sons', 'bdutch1t@cmu.edu', '471-651-5734'),
       (83, 'Schamberger and Sons', 'cnorkutt1f@timesonline.co.uk','323-502-2889'),
       (85, 'Schumm-Skiles', 'mhoustonn@multiply.com', '740-411-5026'),
       (89, 'Stiedemann, Moore and Douglas', 'gevans28@wikimedia.org','476-426-9435'),
       (91, 'Supplier', 'Email', 'Phone'),
       (93, 'Ullrich-Brown', 'ajacquemard22@harvard.edu', '409-911-5168'),
       (96, 'Ward-Trantow', 'stemperton21@symantec.com', '480-968-5565'),
       (98, 'Welch-Koepp', 'dtavinor2e@wp.com', '755-746-1531'),
       (100, 'Witting, Jast and Windler', 'smountj@symantec.com',
        '523-791-9878');
      
# Q1. Create a View showing all transactions for a given week in your business

USE online_store;
DROP VIEW IF EXISTS weekly_transactions; 
CREATE VIEW weekly_transactions AS
SELECT DISTINCT o.order_ID,
       o.order_date,
       p.amount,
       p.payment_method
FROM orders o
LEFT JOIN payments p ON o.order_ID = p.order_ID
WHERE o.order_date BETWEEN '2023-01-01' AND '2023-01-08';

CREATE Database DataMart;
USE DataMart;
DROP TABLE IF EXISTS Question1_Data;
CREATE Table DataMart.Question1_Data SELECT * FROM online_store.weekly_transactions; 

SELECT * FROM Question1_Data
ORDER BY order_date;

# Q2. Create a trigger that stores stock levels once a sale takes place

USE online_store;

DELIMITER //
CREATE TRIGGER UpdateStockLevels
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE stock
    SET stock_quantity = stock_quantity - NEW.order_quantity
    WHERE product_ID = NEW.product_ID;
END;
//
DELIMITER ;

# check stock (273)
SELECT stock_quantity
FROM stock
WHERE product_id = 'FUR-FU-10001215'

# update order
INSERT INTO orders (order_ID, order_date, customer_ID, product_ID, order_quantity)
VALUES ('US-2023-20399', '2023-02-22', 'JM-15250', 'FUR-FU-10001215', 4)

# check stock again (269)
SELECT stock_quantity
FROM stock
WHERE product_id = 'FUR-FU-10001215'

# Q3. Create a View of stock (by supplier) purchased by you

USE online_store;
DROP VIEW IF EXISTS stock_by_supplier; 

CREATE VIEW stock_by_supplier AS
SELECT s.supplier_name, SUM(stock_quantity) AS total_stock_quantity
FROM products pr
LEFT JOIN stock st ON pr.product_ID = st.product_ID
LEFT JOIN suppliers s ON pr.supplier_ID = s.supplier_ID
GROUP BY s.supplier_ID;

USE DataMart;
DROP TABLE IF EXISTS Question3_Data;
CREATE Table DataMart.Question3_Data SELECT * FROM online_store.stock_by_supplier; 

SELECT * FROM Question3_Data
ORDER BY total_stock_quantity DESC;


# Q4. Create a View of Total stock sold to general public (group by supplier). 

USE online_store;
DROP VIEW IF EXISTS total_stock_sold_by_supplier; 

CREATE VIEW total_stock_sold_by_supplier AS
SELECT s.supplier_ID,
       SUM(o.order_quantity) AS total_stock_sold
FROM orders o
JOIN products p ON o.product_ID = p.product_ID
JOIN stock s ON p.product_ID = s.product_ID
GROUP BY s.supplier_ID;

USE DataMart;
DROP TABLE IF EXISTS Question4_Data;
CREATE Table DataMart.Question4_Data SELECT * FROM online_store.total_stock_sold_by_supplier; 

SELECT * FROM Question3_Data
ORDER BY total_stock_quantity DESC;

# For the next 3 questions I have changed year to month and month to week as I only have data for one month... I hope that's OK?
# Q5. Detail and total all transactions (SALES) for the week-to-date.

USE online_store;
SELECT 
    pr.product_ID,
    SUM(o.order_quantity) AS units_sold,
    SUM(o.order_quantity * pr.unit_price) AS total_sales
FROM orders o
LEFT JOIN products pr ON o.product_ID = pr.product_ID
WHERE o.order_date >= '2023-01-15' AND o.order_date <= '2023-01-21'
GROUP BY pr.product_ID WITH ROLLUP
ORDER BY total_sales DESC;


# Q6. Detail and total all SALES for the month-to-date. (A Group By with Roll-Up)
SELECT 
    pr.product_ID,
    SUM(o.order_quantity) AS units_sold,
    SUM(o.order_quantity * pr.unit_price) AS total_sales
FROM orders o
LEFT JOIN products pr ON o.product_ID = pr.product_ID
GROUP BY pr.product_ID WITH ROLLUP
ORDER BY total_sales DESC;


# Q7. Display the growth in sales/services (as a percentage) for your business, from the 1st week of opening until now (week 3). 

SELECT 
    ROUND((sales_wk3 - sales_wk1) / sales_wk1 * 100, 2) AS sales_growth_percentage
FROM (
    SELECT 
        SUM(ROUND(o.order_quantity * pr.unit_price, 2)) AS sales_wk1
    FROM orders o
    LEFT JOIN products pr ON o.product_ID = pr.product_ID
    WHERE o.order_date >= '2023-01-01' AND o.order_date <= '2023-01-07'
) AS wk1,
(
    SELECT 
        SUM(ROUND(o.order_quantity * pr.unit_price, 2)) AS sales_wk3
    FROM orders o
    LEFT JOIN products pr ON o.product_ID = pr.product_ID
    WHERE o.order_date >= '2023-01-15' AND o.order_date <= '2023-01-21'
) AS wk3;


# Q8. Display all returns to date.
SELECT *
FROM returned
ORDER BY return_date;
