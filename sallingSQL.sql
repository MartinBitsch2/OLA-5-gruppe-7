create view amagercentret_sorteret as select 
`offer.ean`, `product.ean`, `API_kald_tidspunkt`, `offer.starttime`, `offer.endtime`, `timer_tilbud_er_oppe`, `offer.newPrice`, `offer.originalPrice`, `offer.percentDiscount`, `offer.stock`, `offer.stockunit`, `product.categories.da`, `product.description`
from føtex_amagercentret_2300;


CREATE TABLE føtex_hillerød_3400 (
  `offer.ean` BIGINT NOT NULL,
  `product.ean` BIGINT NOT NULL,
  `API_kald_tidspunkt` DATETIME,
  `offer.starttime` DATETIME,
  `offer.endtime` DATETIME,
  `offer.lastUpdate` DATETIME,
  `timer_tilbud_er_oppe` DECIMAL(10,2),
  `offer.currency` VARCHAR(3),
  `offer.newPrice` DECIMAL(10,2),
  `offer.originalPrice` DECIMAL(10,2),
  `offer.discount` DECIMAL(10,2),
  `offer.percentDiscount` DECIMAL(10,3),
  `offer.stock` DECIMAL(10,3),
  `offer.stockunit` VARCHAR(50),
  `product.categories.da` VARCHAR(500),
  `product.categories.en` VARCHAR(500),
  `product.description` VARCHAR(500),
  `product.image` VARCHAR(500)
);

CREATE TABLE føtex_dytmærsken_8900 (
  `offer.ean` BIGINT NOT NULL,
  `product.ean` BIGINT NOT NULL,
  `API_kald_tidspunkt` DATETIME,
  `offer.starttime` DATETIME,
  `offer.endtime` DATETIME,
  `offer.lastUpdate` DATETIME,
  `timer_tilbud_er_oppe` DECIMAL(10,2),
  `offer.currency` VARCHAR(3),
  `offer.newPrice` DECIMAL(10,2),
  `offer.originalPrice` DECIMAL(10,2),
  `offer.discount` DECIMAL(10,2),
  `offer.percentDiscount` DECIMAL(10,3),
  `offer.stock` DECIMAL(10,3),
  `offer.stockunit` VARCHAR(50),
  `product.categories.da` VARCHAR(500),
  `product.categories.en` VARCHAR(500),
  `product.description` VARCHAR(500),
  `product.image` VARCHAR(500)
);

CREATE TABLE føtex_nykøbingf_4800 (
  `offer.ean` BIGINT NOT NULL,
  `product.ean` BIGINT NOT NULL,
  `API_kald_tidspunkt` DATETIME,
  `offer.starttime` DATETIME,
  `offer.endtime` DATETIME,
  `offer.lastUpdate` DATETIME,
  `timer_tilbud_er_oppe` DECIMAL(10,2),
  `offer.currency` VARCHAR(3),
  `offer.newPrice` DECIMAL(10,2),
  `offer.originalPrice` DECIMAL(10,2),
  `offer.discount` DECIMAL(10,2),
  `offer.percentDiscount` DECIMAL(10,3),
  `offer.stock` DECIMAL(10,3),
  `offer.stockunit` VARCHAR(50),
  `product.categories.da` VARCHAR(500),
  `product.categories.en` VARCHAR(500),
  `product.description` VARCHAR(500),
  `product.image` VARCHAR(500)
);

CREATE TABLE føtex_amagercentret_2300 (
  `offer.ean` BIGINT NOT NULL,
  `product.ean` BIGINT NOT NULL,
  `API_kald_tidspunkt` DATETIME,
  `offer.starttime` DATETIME,
  `offer.endtime` DATETIME,
  `offer.lastUpdate` DATETIME,
  `timer_tilbud_er_oppe` DECIMAL(10,2),
  `offer.currency` VARCHAR(3),
  `offer.newPrice` DECIMAL(10,2),
  `offer.originalPrice` DECIMAL(10,2),
  `offer.discount` DECIMAL(10,2),
  `offer.percentDiscount` DECIMAL(10,3),
  `offer.stock` DECIMAL(10,3),
  `offer.stockunit` VARCHAR(50),
  `product.categories.da` VARCHAR(500),
  `product.categories.en` VARCHAR(500),
  `product.description` VARCHAR(500),
  `product.image` VARCHAR(500)
);

CREATE TABLE føtex_svendborg_5700 (
  `offer.ean` BIGINT NOT NULL,
  `product.ean` BIGINT NOT NULL,
  `API_kald_tidspunkt` DATETIME,
  `offer.starttime` DATETIME,
  `offer.endtime` DATETIME,
  `offer.lastUpdate` DATETIME,
  `timer_tilbud_er_oppe` DECIMAL(10,2),
  `offer.currency` VARCHAR(3),
  `offer.newPrice` DECIMAL(10,2),
  `offer.originalPrice` DECIMAL(10,2),
  `offer.discount` DECIMAL(10,2),
  `offer.percentDiscount` DECIMAL(10,3),
  `offer.stock` DECIMAL(10,3),
  `offer.stockunit` VARCHAR(50),
  `product.categories.da` VARCHAR(500),
  `product.categories.en` VARCHAR(500),
  `product.description` VARCHAR(500),
  `product.image` VARCHAR(500)
);