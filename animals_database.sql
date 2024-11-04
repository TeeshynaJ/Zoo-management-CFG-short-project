-- Create the database
CREATE DATABASE animals;

-- Use the database
USE animals;

-- Create the animals table
CREATE TABLE zoo_animals (
    Animal_id INT PRIMARY KEY,
    Animal_Name VARCHAR(50),
    Family VARCHAR(50),
    Age INT,
    Habitat_id INT               
);

-- Create the Habitats_table
CREATE TABLE habitats (
    Habitat_id INT PRIMARY KEY,
    Habitat_name VARCHAR(100),
    Continent VARCHAR(100)
);

-- Create the Staff_Table
CREATE TABLE staff (
    Staff_id INT PRIMARY KEY,
    Staff_name VARCHAR(50),
    Staff_role VARCHAR(50)
);


-- Create the Feedings_table
CREATE TABLE feedings (
    Feeding_id INT PRIMARY KEY,
    Animal_id INT,
    Diet VARCHAR(50),
    Feeding_time DATETIME
    );

-- Create the Animal_Health_Records table
CREATE TABLE Animal_Health_Records (
    Healthrecord_ID INT PRIMARY KEY,
    Animal_id INT,
    Health_status VARCHAR(50),
    Check_up_date DATE
);


-- Insert data into the zoo_animals table
INSERT INTO zoo_animals (Animal_id, Animal_Name, Family, Age, Habitat_id) VALUES
(1, 'Aardvark', 'Orycteropodidae', 6, 1),
(2, 'African Elephant', 'Elephantidae', 15, 1),
(3, 'African Lion', 'Felidae', 8, 1),
(4, 'Arabian Oryx', 'Bovidae', 10, 4),
(5, 'Australian Fur Seal', 'Otariidae', 12, 5),
(6, 'Bald Eagle', 'Accipitridae', 20, 6),
(7, 'Blue-Footed Booby', 'Sulidae', 5, 5),
(8, 'Bornean Orangutan', 'Hominidae', 30, 7),
(9, 'Brown Bear', 'Ursidae', 25, 6),
(10, 'Cheetah', 'Felidae', 10, 1),
(11, 'Coelacanth', 'Latimeriidae', 80, 5),
(12, 'Dhole', 'Canidae', 7, 6),
(13, 'Eastern Gorilla', 'Hominidae', 15, 8),
(14, 'Emperor Penguin', 'Spheniscidae', 20, 9),
(15, 'Flying Fox', 'Pteropodidae', 10, 7),
(16, 'Gerenuk', 'Bovidae', 5, 1),
(17, 'Golden Lion Tamarin', 'Callitrichidae', 7, 10),
(18, 'Harp Seal', 'Phocidae', 10, 9),
(19, 'Harpy Eagle', 'Accipitridae', 25, 7),
(20, 'Indri', 'Indridae', 10, 7),
(21, 'Okapi', 'Giraffidae', 12, 8),
(22, 'Red-Eyed Tree Frog', 'Hylidae', 5, 7),
(23, 'Secretary Bird', 'Sagittariidae', 5, 1),
(24, 'Snowy Owl', 'Strigidae', 12, 9),
(25, 'Spider Monkey', 'Atelidae', 10, 7),
(26, 'Spotted Hyena', 'Hyaenidae', 6, 1),
(27, 'Star-Nosed Mole', 'Talpidae', 3, 11),
(28, 'Sumatran Rhinoceros', 'Rhinocerotidae', 10, 12),
(29, 'Sumatran Tiger', 'Felidae', 8, 12),
(30, 'Sun Bear', 'Ursidae', 10, 12),
(31, 'Thorny Devil', 'Agamidae', 4, 13),
(32, 'Tree Kangaroo', 'Macropodidae', 6, 12),
(33, 'Tsetse Fly', 'Glossinidae', 1, 1),
(34, 'Wild Boar', 'Suidae', 7, 6),
(35, 'Narwhal', 'Monodontidae', 20, 15);



-- Insert data for habitats table
INSERT INTO habitats(Habitat_id, Habitat_name, Continent) VALUES
(1, 'Savannas', 'Africa'),
(4, 'Desert', 'Asia'),
(5, 'Coastal Waters', 'Oceania'),
(6, 'Forests', 'North America'),
(7, 'Rainforests', 'Asia'),
(8, 'Rainforests', 'Africa'),
(9, 'Arctic', 'Antarctica'),
(10, 'Tropical forest', 'South America'),
(11, 'Wetlands', 'North America'),
(12, 'Rainforests', 'Asia'),
(13, 'Desert', 'Australia'),
(14, 'Forests', 'Eurasia'),
(15, 'Arctic', 'Arctic');


-- Insert data for the Feedings_table
INSERT INTO feedings (Feeding_id, Animal_id, Diet,Feeding_Time) VALUES
(1, 1, 'Insectivore', '2024-09-01 08:30:00'),
(2, 2, 'Herbivore', '2024-09-01 09:00:00'),
(3, 3, 'Carnivore', '2024-09-01 10:15:00'),
(4, 4, 'Herbivore', '2024-09-01 11:00:00'),
(5, 5, 'Carnivore', '2024-09-01 12:45:00'),
(6, 6, 'Carnivore', '2024-09-01 14:00:00'),
(7, 7, 'Piscivore', '2024-09-01 13:30:00'),
(8, 8, 'Omnivore', '2024-09-01 16:00:00'),
(9, 9, 'Omnivore', '2024-09-01 09:30:00'),
(10, 10, 'Carnivore', '2024-09-01 15:00:00'),
(11, 11, 'Carnivore', '2024-09-01 11:30:00'),
(12, 12, 'Carnivore', '2024-09-01 12:00:00'),
(13, 13, 'Herbivore', '2024-09-01 10:45:00'),
(14, 14, 'Carnivore', '2024-09-01 14:30:00'),
(15, 15, 'Herbivore', '2024-09-01 15:15:00'),
(16, 16, 'Herbivore', '2024-09-01 08:45:00'),
(17, 17, 'Herbivore', '2024-09-01 11:00:00'),
(18, 18, 'Carnivore', '2024-09-01 13:15:00'),
(19, 19, 'Herbivore', '2024-09-01 12:30:00'),
(20, 20, 'Carnivore', '2024-09-01 10:00:00'),
(21, 21, 'Herbivore', '2024-09-01 08:00:00'),
(22, 22, 'Carnivore', '2024-09-01 09:15:00'),
(23, 23, 'Carnivore', '2024-09-01 16:30:00'),
(24, 24, 'Carnivore', '2024-09-01 11:45:00'),
(25, 25, 'Omnivore', '2024-09-01 10:30:00'),
(26, 26, 'Carnivore', '2024-09-01 12:15:00'),
(27, 27, 'Insectivore', '2024-09-01 14:00:00'),
(28, 28, 'Herbivore', '2024-09-01 09:00:00'),
(29, 29, 'Carnivore', '2024-09-01 11:15:00'),
(30, 30, 'Omnivore', '2024-09-01 15:45:00'),
(31, 31, 'Insectivore', '2024-09-01 08:15:00'),
(32, 32, 'Herbivore', '2024-09-01 09:45:00'),
(33, 33, 'Carnivore', '2024-09-01 13:00:00'),
(34, 34, 'Omnivore', '2024-09-01 14:15:00'),
(35, 35, 'Carnivore', '2024-09-01 10:00:00');


-- Insert data into the Animal_Health_Records table
INSERT INTO Animal_Health_Records (Healthrecord_ID, Animal_id, Health_status, Check_up_date) VALUES
(1, 1, 'Healthy', '2024-09-05'),
(2, 2, 'Injured', '2024-09-20'),
(3, 3, 'Healthy', '2024-09-20'),
(4, 4, 'Sick', '2024-09-20'),
(5, 5, 'Injured', '2024-09-20'),
(6, 6, 'Sick', '2024-09-19'),
(7, 7, 'Healthy', '2024-12-15'),
(8, 8, 'Sick', '2024-09-19'),
(9, 9, 'Healthy', '2024-01-11'),
(10, 10, 'Died', '2024-12-13'),
(11, 11, 'Healthy', '2024-08-18'),
(12, 12, 'Healthy', '2024-07-16'),
(13, 13, 'Healthy', '2024-08-19'),
(14, 14, 'Injured', '2024-08-30'),
(15, 15, 'Injured', NULL),
(16, 16, 'Healthy', '2024-09-20'),
(17, 17, 'Sick', '2024-07-31'),   
(18, 17, 'Died', '2024-08-31'),  
(19, 18, 'Healthy', '2024-01-11'),
(20, 19, 'Healthy', '2024-09-19'), 
(21, 19, 'Injured', '2024-10-19'),
(22, 20, 'Healthy', '2024-01-11'),
(23, 21, 'Died', NULL),
(24, 22, 'Healthy', NULL),
(25, 23, 'Sick', NULL),
(26, 2 , 'Healthy', '2024-01-20'),
(27, 24, 'Healthy', '2024-09-10'),    
(28, 25, 'Sick', '2024-09-12'),       
(29, 26, 'Healthy', '2024-09-18'),     
(30, 27, 'Injured', '2024-09-15'),    
(31, 28, 'Healthy', '2024-09-20'),      
(32, 29, 'Sick', '2024-09-22'),         
(33, 30, 'Healthy', '2024-09-25'),      
(34, 31, 'Died', '2024-09-27'),     
(35, 32, 'Healthy', '2024-09-28'),
(36, 31, 'Sick', '2024-08-02');



-- Insert data for the Staff_Table
INSERT INTO staff (Staff_id,Staff_Name, Staff_Role) VALUES
(1, 'Sarah', 'Zookeeper'),
(3, 'Emma', 'Zookeeper'),
(6, 'Noah', 'Zookeeper'),
(8, 'Liam', 'Zookeeper');

# create relationships between tables

ALTER TABLE zoo_animals  
ADD CONSTRAINT FK_habitat
FOREIGN KEY (Habitat_id) REFERENCES habitats(Habitat_id);

ALTER TABLE feedings
ADD CONSTRAINT FK_Animal 
FOREIGN KEY (Animal_id) REFERENCES zoo_animals(Animal_id);

ALTER TABLE animal_health_records
ADD CONSTRAINT FK_Health_Animal
FOREIGN KEY (Animal_id) REFERENCES zoo_animals(Animal_id);

-- Refering to feeding table
-- 	add next staff id and next feeding time columns 
ALTER TABLE feedings
ADD Staff_ID INT,
ADD Next_Feeding_Time DATETIME;

ALTER TABLE feedings
ADD CONSTRAINT FK_Staff
FOREIGN KEY (Staff_id) REFERENCES staff(Staff_id);


UPDATE feedings
SET Next_Feeding_Time = CASE 
    WHEN Feeding_id = 1 OR Feeding_id = 24 THEN '2024-09-29 10:00:00' 
    WHEN Feeding_id = 2 OR Feeding_id = 25 THEN '2024-09-29 11:00:00'  
    WHEN Feeding_id = 3 OR Feeding_id = 26 THEN '2024-09-29 12:00:00'  
    WHEN Feeding_id = 4 OR Feeding_id = 27 THEN '2024-09-29 13:00:00' 
    WHEN Feeding_id = 5 OR Feeding_id = 28 THEN '2024-09-29 10:30:00'  
    WHEN Feeding_id = 6 OR Feeding_id = 29 THEN '2024-09-29 11:30:00'  
    WHEN Feeding_id = 7 OR Feeding_id = 30 THEN '2024-09-29 12:30:00'  
    WHEN Feeding_id = 8 OR Feeding_id = 31 THEN '2024-09-29 13:30:00'  
    WHEN Feeding_id = 9 OR Feeding_id = 32 THEN '2024-09-29 10:15:00'  
    WHEN Feeding_id = 10 OR Feeding_id = 33 THEN '2024-09-29 11:15:00' 
    WHEN Feeding_id = 11 OR Feeding_id = 34 THEN '2024-09-29 12:15:00' 
    WHEN Feeding_id = 12 OR Feeding_id = 35 THEN '2024-09-29 13:15:00' 
    WHEN Feeding_id = 13 OR Feeding_id = 15 THEN '2024-09-29 10:45:00' 
    WHEN Feeding_id = 14 OR Feeding_id = 16  THEN '2024-09-29 11:45:00' 
    WHEN Feeding_id = 17 OR Feeding_id = 18 THEN '2024-09-29 12:45:00' 
    WHEN Feeding_id = 19 OR Feeding_id = 20 THEN '2024-09-29 13:45:00'
    WHEN Feeding_id = 21 OR Feeding_id = 22 THEN '2024-09-29 10:05:00' 
    WHEN Feeding_id = 23 THEN '2024-09-29 11:05:00'

END
WHERE Feeding_id BETWEEN 1 AND 35;  


#assign a random staff to an animal 

UPDATE feedings
SET Staff_ID = (
    SELECT Staff_id
    FROM staff
    ORDER BY RAND()  -- Randomly select a staff member
    LIMIT 1          -- Select one staff member only
);


-- Using any type of the joins create a view that combines multiple tables in a logical way

CREATE OR REPLACE VIEW Animal_overview AS
SELECT 
    za.Animal_id, 
    za.Animal_Name,
    za.Family AS Species,
    ht.Habitat_name,
    ft.Diet AS Food_type,
    ah.Health_status,
    ah.Check_up_date
FROM 
    zoo_animals AS za  
LEFT JOIN 
    habitats AS ht ON za.habitat_id = ht.Habitat_id
LEFT JOIN 
    feedings AS ft ON za.Animal_id = ft.Animal_id
LEFT JOIN 
    animal_Health_Records AS ah ON za.Animal_id = ah.Animal_id;


#STORED FUNCTION -- create a stored function that retrieve health records for an animal

DELIMITER //
CREATE FUNCTION Health_Status(animal_Id INT) 
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
    DECLARE health_status VARCHAR(50);   
    
    SELECT Health_status INTO health_status
    FROM Animal_Health_Records
    WHERE Animal_id = animal_ID;
      
    RETURN health_status;
END //
DELIMITER ;

-- to retrieve the health status on an animal
SELECT * FROM Animal_Health_Records WHERE Animal_id = 2;

#SUBQUERIES 

-- create a subquery to retrieve the name of animals with a specific diet.
SELECT Animal_Name
FROM zoo_animals
WHERE Animal_id IN (
    SELECT Animal_id
    FROM feedings -- Corrected table name
    WHERE Diet = 'Herbivore'
);


-- create a subquery to retrieve the list of animals from a specific country
SELECT Animal_Name
FROM zoo_animals
WHERE Habitat_id IN (
    SELECT Habitat_id
    FROM habitats
    WHERE continent = 'Asia'
);

-- using group by and having , to identify number of feedings per staff that have more than 6 feedings
SELECT Staff_ID, 
COUNT(*) AS number_of_feedings
FROM feedings 
GROUP BY Staff_ID
HAVING COUNT(*) >6;

-- finding the total number of animals in a habitat
SELECT 
    h.Habitat_name, 
    COUNT(za.Animal_id) AS Number_of_Animals_in_Habitat
FROM 
    habitats AS h
LEFT JOIN 
    zoo_animals AS za   
    ON h.Habitat_id = za.Habitat_id
GROUP BY 
    h.Habitat_name
ORDER BY 
    Number_of_Animals DESC;
