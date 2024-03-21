create database ecommers ; 

use ecommers;

CREATE TABLE supplier (
  supplier_id INT PRIMARY KEY,
  supplier_name VARCHAR(255),
  supplier_city VARCHAR(255),
  supplier_contact VARCHAR(20)
);

CREATE TABLE customer (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(255),
  customer_contact VARCHAR(255),
  customer_city VARCHAR(20)
);


CREATE TABLE supplier_pricing (
  supplier_id INT,
  product_id INT,
  price DECIMAL(10, 2),
  FOREIGN KEY (supplier_id) REFERENCES supplier(supplier_id),
  FOREIGN KEY (product_id) REFERENCES product(product_id)
);


CREATE TABLE rating (
  rating_id INT PRIMARY KEY,
  customer_id INT,
  product_id INT,
  rating INT,
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (product_id) REFERENCES product(product_id)
);

insert into supplier value (1, "rajesh retails" , "delhi" , 1234567890);
insert into supplier value (2, " apperio ltd" , "mumbai" , 12151232122);
insert into supplier value (3, "knome products", "banglore", 16211312515);
insert into supplier value (4, "bansal retail", "kochi", 1451231312654);
insert into supplier value (5, "mittle ltd", "lucknow", 26232225522); 

insert into customer value (1, "AKASH",5461511128, "delhi"  );
insert into customer value (2, "HMAN", 5461511125, "noida"  );
insert into customer value (3, "NEHA", 5461511151, "kolkata" );
insert into customer value (4, "MEGHA",5461511128, "mumbai" );
insert into customer value (5, "PULKIT",5546154696, "lucknow"  ); 

insert into category value (1, "books");
insert into category value (2, "games");
insert into category value (3, "groceries");
insert into category value (4, "electronics");


insert into product value (1, "GTA V", "windows 7 and above with i5 processor and 8gb ram", 2);
insert into product value (2, " tshirts",  "size-l with black , blue and white variation", 5);
insert into product value (3, "rog laptop",  "windows 10 with  15 inches of screen i7 processor 1tb ssd", 4);
insert into product value (4, "oats", "highly nutrituationform nestle",3);
insert into product value (5, "harry portter", "best collection of all time by j.k rowling",1);
insert into product value (6,"milk", "1l tonned milk ", 3);
insert into product value (7,"boat earephone", " 1.5 ittor of long dolby atmos",4);
insert into product value (8,"jeans" , " streachable denim jeans with verioussize and colore",5);
insert into product value (9,"project igi" ,"compatble with windows 7 and above ", 2);
insert into product value (10,"hoddie", "black gucci for 13 years and above",5);
insert into product value (11,"rich dad poore dad", "written by robert kiyosaki",1);
insert into product value (12,"train your brain" , "by shreene stephen",1 );

