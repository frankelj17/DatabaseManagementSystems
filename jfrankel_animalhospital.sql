CREATE DATABASE catalog;
USE catalog;

CREATE TABLE catalog
(
    product INT NOT NULL
    AUTO_INCREMENT,
    name TEXT NOT NULL,
    category TINYTEXT NOT NULL,
    subcategory TINYTEXT NOT NULL,
    cost DECIMAL
    (10,2) NOT NULL,
    price DECIMAL
    (10,2) NOT NULL,
    count INTEGER NOT NULL,
    weight FLOAT
    (10,3) NOT NULL,
    dateadded DATE NOT NULL,
    manufacturer TINYTEXT NOT NULL,
    PRIMARY KEY
    (product)
);

    INSERT INTO catalog
    VALUES
        (NULL, 'Tylenol', 'Medicine', 'Pain Reliever', 2.99, 9.99, 180, 0.25, '2015-03-15', 'Johnson & Johnson'),
        (NULL, 'Advil', 'Medicine', 'Pain Reliever', 1.75, 8.99, 125, 0.22, '2016-05-12', 'Wyeth'),
        (NULL, 'Claritin', 'Medicine', 'Allgeries', 3.62, 12.75, 30, 0.09, '2014-12-11', 'Bayer'),
        (NULL, 'Pepto-Bismol', 'Medicine', 'Digestive Health', 1.12, 5.45, 20, 0.02, '2012-01-28', 'Procter & Gamble'),
        (NULL, 'Neutrogena Daily Cleanser', 'Skin Care', 'Cleanser', 3.15, 8.62, 1, 0.75, '2016-05-20', 'Johnson & Johnson'),
        (NULL, 'Olay Foaming Cleanser', 'Skin Care', 'Cleanser', 2.78, 9.24, 1, 0.75, '2014-06-02', 'Procter & Gamble'),
        (NULL, 'Dove Body Wash', 'Skin Care', 'Cleanser', 3.15, 9.76, 1, 0.8, '2012-09-10', 'Unilever'),
        (NULL, 'Tide Liquid', 'Laundry Care', 'Detergent', 1.99, 9.99, 1, 1.0, '2010-09-05', 'Procter & Gamble'),
        (NULL, 'All Liquid', 'Laundry Care', 'Detergent', 0.99, 4.99, 1, 0.65, '2011-10-15', 'Sun Products'),
        (NULL, 'Klondike Bars', 'Grocery', 'Ice Cream', 1.25, 4.25, 6, 0.2, '2015-06-19', 'Unilever'),
        (NULL, 'HÃ¤agen-Dazs', 'Grocery', 'Ice Cream', 2.25, 6.25, 4, 0.19, '2016-02-12', 'Nestle'),
        (NULL, 'Purina Dog Chow', 'Pets', 'Dog Food', 1.15, 7.99, 1, 5.00, '2014-04-28', 'Nestle');