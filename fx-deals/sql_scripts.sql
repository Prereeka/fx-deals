//Created table 'deal' to save and show deal details
CREATE TABLE `fxdeal`.`deal` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `from_currency` VARCHAR(45) NOT NULL,
  `to_currency` VARCHAR(45) NOT NULL,
  `timestamp` DATE NOT NULL,
  `amount` DOUBLE NOT NULL,
  PRIMARY KEY (`id`)
);


//Created table 'iso_currency_code' to show ISO Currency Code for few countries
CREATE TABLE `fxdeal`.`iso_currency_code` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `country_name` VARCHAR(45) NOT NULL,
  `currency_code` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`)
);

//Inserted ISO currency code of few countries in iso_currency_table 
INSERT INTO iso_currency_code(country_name,currency_code) values('Afghanistan','AFN');
INSERT INTO iso_currency_code(country_name,currency_code) values('Algeria','DZD');
INSERT INTO iso_currency_code(country_name,currency_code) values('Argentina','ARS');
INSERT INTO iso_currency_code(country_name,currency_code) values('Australia','AUD');
INSERT INTO iso_currency_code(country_name,currency_code) values('Austria','EUR');
INSERT INTO iso_currency_code(country_name,currency_code) values('Bangladesh','BDT');
INSERT INTO iso_currency_code(country_name,currency_code) values('Belgium','EUR');
INSERT INTO iso_currency_code(country_name,currency_code) values('Bermuda','BMD');
INSERT INTO iso_currency_code(country_name,currency_code) values('Bhutan','BTN');
INSERT INTO iso_currency_code(country_name,currency_code) values('Brazil','BRL');
INSERT INTO iso_currency_code(country_name,currency_code) values('Canada','CAD');
INSERT INTO iso_currency_code(country_name,currency_code) values('China','CNY');
INSERT INTO iso_currency_code(country_name,currency_code) values('Egypt','EGP');
INSERT INTO iso_currency_code(country_name,currency_code) values('India','INR');
INSERT INTO iso_currency_code(country_name,currency_code) values('Japan','JPY');
INSERT INTO iso_currency_code(country_name,currency_code) values('Korea','KRD');
INSERT INTO iso_currency_code(country_name,currency_code) values('Maldives','MVR');
INSERT INTO iso_currency_code(country_name,currency_code) values('Nepal','NPR');
INSERT INTO iso_currency_code(country_name,currency_code) values('Qatar','QAR');
INSERT INTO iso_currency_code(country_name,currency_code) values('South Africa','ZAR');
INSERT INTO iso_currency_code(country_name,currency_code) values('United Arab Emirates','AED');
INSERT INTO iso_currency_code(country_name,currency_code) values('United Kingdom','GBP');
INSERT INTO iso_currency_code(country_name,currency_code) values('United States','USD');