CREATE DATABASE IF NOT EXISTS lgl;
USE lgl;
CREATE TABLE IF NOT EXISTS Category (
	category_id INT AUTO_INCREMENT,
	category_name VARCHAR(255) NOT NULL,
	PRIMARY KEY (category_id)
);
CREATE TABLE IF NOT EXISTS Grp (
	grp_id INT AUTO_INCREMENT,
	grp_name VARCHAR(255) NOT NULL,
	PRIMARY KEY (grp_id)
);
CREATE TABLE IF NOT EXISTS Ingredient (
	ingredient_id INT AUTO_INCREMENT,
	category_id INT,
	grp_id INT,
	ingredient_name VARCHAR(255) NOT NULL,
	store_has BOOLEAN DEFAULT FALSE,
	vegan BOOLEAN DEFAULT FALSE,
	fillable BOOLEAN DEFAULT FALSE,
	weightable BOOLEAN DEFAULT FALSE,
	chilled BOOLEAN DEFAULT FALSE,
	organic BOOLEAN DEFAULT FALSE,
	jarred BOOLEAN DEFAULT FALSE,
	canned BOOLEAN DEFAULT FALSE,
	PRIMARY KEY (ingredient_id),
	FOREIGN KEY (category_id) REFERENCES Category(category_id),
	FOREIGN KEY (grp_id) REFERENCES Grp(grp_id)
);
CREATE TABLE IF NOT EXISTS Recipe (
	recipe_id INT AUTO_INCREMENT,
	recipe_name VARCHAR(255) NOT NULL,
	serves INT DEFAULT FALSE,
	instructions TEXT NOT NULL,
	highlight_start DATE,
	highlight_end DATE,
	PRIMARY KEY (recipe_id)
);
/*
 for storing "2 to 4 cloves" of X, set rangeLow = "2 cloves" & rangeHigh = "4 cloves"
 for storing 400g of X, set rangeLow = "400g" & rangeHigh = "400g"
 */
CREATE TABLE IF NOT EXISTS Measurement (
	measurement_id INT AUTO_INCREMENT,
	ingredient_id INT,
	amount VARCHAR(255) NOT NULL,
	PRIMARY KEY (measurement_id),
	FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);
CREATE TABLE IF NOT EXISTS Recipe_Measurement (
	recipe_measurement_id INT AUTO_INCREMENT,
	recipe_id INT,
	measurement_id INT,
	PRIMARY KEY (recipe_measurement_id),
	FOREIGN KEY (recipe_id) REFERENCES Recipe(recipe_id),
	FOREIGN KEY (measurement_id) REFERENCES Measurement(measurement_id)
);