--CREATE SCHEMA IF NOT EXISTS dbo;
--
--DROP TABLE IF EXISTS dbo.PROFILE;
--
--CREATE TABLE dbo.PROFILE (
--  PROFILE_ID INT auto_increment,
--  FIRST_NAME VARCHAR(50) NOT NULL,
--  LAST_NAME VARCHAR(50) NOT NULL,
--  PHONE VARCHAR(12) NOT NULL,
--  EMAIL VARCHAR(20) NULL,
--  PRIMARY KEY (PROFILE_ID)
--);
--
--
--DROP TABLE IF EXISTS dbo.PRODUCT;
--
--CREATE TABLE dbo.PRODUCT (
--  PRDT_ID INT NOT NULL auto_increment,
--  NAME VARCHAR(50) NOT NULL,
--  DESCRIPTION VARCHAR(1200) NULL,
--  RATE DOUBLE NOT NULL,
--  PRIMARY KEY (PRDT_ID)
--);


--DROP TABLE IF EXISTS dbo.CART;
--
--CREATE TABLE dbo.CART (
--  CART_ID INT auto_increment,
--  PROFILE_ID INT,
--  PRDT_ID INT,
--  QUANTITY INT NOT NULL,
--  TOTAL DOUBLE NOT NULL,
--  CREATED_DATE DATE NOT NULL,
--  UPDATED_DATE DATE NOT NULL
--);

--alter table dbo.CART
--  add primary key (CART_ID) ;
--alter table dbo.CART
--  add constraint CART_PRFL_FK foreign key (PROFILE_ID)
--  references dbo.PROFILE (PROFILE_ID);
--alter table dbo.CART
--  add constraint CART_PRDT_FK foreign key (PRDT_ID)
--  references dbo.PRODUCT (PRDT_ID);

--DROP TABLE IF EXISTS dbo.ORDERS;
--
--CREATE TABLE dbo.ORDERS (
--  ORDER_ID INT auto_increment,
--  CART_ID INT NOT NULL,
--  CREATED_DATE DATE NOT NULL
--);
--
--alter table dbo.ORDERS
--  add primary key (ORDER_ID) ;
--alter table dbo.ORDERS
--  add constraint ORD_CART_FK foreign key (CART_ID)
--  references dbo.CART (CART_ID);

INSERT INTO DBO.PRODUCT (NAME, DESCRIPTION, RATE) VALUES
  ('Amazon Echo', 'The Amazon Echo is a Bluetooth speaker powered by Alexa, Amazon''s handy voice assistant. Alexa works with a number of smart home devices directly, as well as with If This Then That (IFTTT) to control plenty of others via pairings you can create yourself', 79.99),
  ('Google Home Max', 'If you prefer Google Assistant to Amazon Alexa, you''ll want to invest in Google''s Nest Hub line of speakers and smart displays. The big Google Home Max offers truly room-filling sound, while the Google Nest Hub Max is an attractive, bright smart display.', 299.99),
  ('Sonos One', 'If you can''t decide between Amazon and Alexa and Google Assistant, you don''t have to. The Sonos One supports both popular voice assistants, and sound-wise, it''s head and shoulders above other smart speakers in its price range.', 199.99),
  ('ConnectSense Smart', 'If you''re looking to add some smarts to small home appliances such as coffee makers, lamps, and TVs, the ConnectSense Smart Outlet 2 is an excellent choice. This versatile dual-outlet smart plug can be controlled with an Android or iOS mobile app and works with Alexa, Google Assistant, and Siri voice commands.', 59.95),
  ('DLink Outdoor Wi-Fi Smart Plug', 'With the DLink Outdoor Wi-Fi Smart Plug DSP-W320, it''s easy to control outdoor devices such as decorative lighting and pool pumps with your phone and a mobile app. Equipped with two outlets and a USB charging port, this weatherproof plug installs in minutes, supports Alexa and Google Assistant voice commands, and will work with other smart home devices.', 49.99),
  ('Arlo Ultra', 'The Arlo Ultra raises the bar for all outdoor cameras. It''s the first model we''ve seen that streams and records video in true 4K, or Ultra High Definition UHD, and it''s loaded with cool tech including automatic zooming, motion tracking, color night vision, an integrated spotlight and siren, one-click 911 connectivity, a 180-degree field of view, and more. It''s also completely wireless and a snap to install.', 419),
  ('SimCam 1S AI Home Security Camera','In addition to providing sharp 1080p video and accurate motion detection, the SimCam 1S uses face recognition to tell you who is coming and going, and will send smart alerts that differentiate between people, cars, and pets. It has a 360-degree mechanical panning mechanism, and uses local storage to archive motion-triggered recorded video.', 129),
  ('RemoBell S', 'When we reviewed the original RemoBell back in 2017, we liked that it was completely wireless, easy to install, and that it delivered sharp 720p video, but were disappointed with its bulky aesthetics, lack of on-demand video, and laggy performance. The new RemoBell S is a much slimmer device that gives you on-demand HD video, free cloud recording, support for Alexa and Google voice commands, and interoperability with other smart home devices', 79),
  ('Nanit Plus', 'The Nanit Plus addresses our issues with the original, like the lack of two-way audio, and brings new, incredibly useful features like breathing monitoring in addition to the sleep tracking. It''s expensive, but it delivers a wealth of data you can''t really put a price on, making it our top pick.', 249.99),
  ('Furbo Dog Camera', 'Furbo is essentially an indoor home security camera and dog nanny in one, offering clear 1080p video even in the dark, plus barking alerts and two-way audio so you can hear and talk to your pup. Perhaps best of all, it lets you toss treats to your pet when you''re out and about. The Furbo Dog Camera is pricey, especially compared with traditional security cameras, but it''s as useful as it is fun, and gives you peace of mind that your dog and home are safe.', 200.53);

INSERT INTO DBO.PROFILE (FIRST_NAME, LAST_NAME, PHONE, EMAIL) VALUES
  ('UserFirstNameA', 'UserLastNameA', '1234567890', 'a.email@test.com'),
  ('UserFirstNameB', 'UserLastNameB', '7894520631', 'b.email@test.com'),
  ('UserFirstNameC', 'UserLastNameC', '8542036179', 'c.email@test.com');