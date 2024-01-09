CREATE TABLE category (
	category_id VARCHAR PRIMARY KEY,
	category VARCHAR
);

SELECT * FROM category;

CREATE TABLE subcategory (
	subcategory_id VARCHAR PRIMARY KEY,
	subcategory VARCHAR
);

SELECT * FROM subcategory;

CREATE TABLE contacts (
	contact_id INT PRIMARY KEY,
	first_name VARCHAR,
	last_name VARCHAR,
	email VARCHAR
);

SELECT * FROM contacts;

CREATE TABLE campaign (
	cf_id INT PRIMARY KEY,
	contact_id INT REFERENCES contacts(contact_id),
	company_name VARCHAR,
	description VARCHAR,
	goal FLOAT,
	pledged FLOAT,
	outcome VARCHAR,
	backers_count INT,
	country VARCHAR,
	currency VARCHAR,
	launch_date VARCHAR,
	end_date VARCHAR,
	category_id VARCHAR REFERENCES category(category_id),
	subcategory_id VARCHAR REFERENCES subcategory(subcategory_id)
);	

SELECT * FROM campaign;
	