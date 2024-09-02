--
-- Injectar datos a Tabla de usuario
--
INSERT INTO Userbnb (id, updated_at, created_at, email, password, first_name, last_name)
VALUES
('user1', SYSDATE, SYSDATE, 'juan.perez@example.com', 'password123', 'Juan', 'Perez'),
('user2', SYSDATE, SYSDATE, 'ana.garcia@example.com', 'password456', 'Ana', 'Garcia'),
('user3', SYSDATE, SYSDATE, 'pedro.martinez@example.com', 'password789', 'Pedro', 'Martinez'),
('user4', SYSDATE, SYSDATE, 'maria.rodriguez@example.com', 'password101', 'Maria', 'Rodriguez'),
('user5', SYSDATE, SYSDATE, 'luis.gonzalez@example.com', 'password111', 'Luis', 'Gonzalez');

--
-- Injectar datos a Tabla de estado
--
INSERT INTO State (id, updated_at, created_at, name)
VALUES
('CA', SYSDATE, SYSDATE, 'California'),
('NY', SYSDATE, SYSDATE, 'New York'),
('TX', SYSDATE, SYSDATE, 'Texas'),
('FL', SYSDATE, SYSDATE, 'Florida'),
('IL', SYSDATE, SYSDATE, 'Illinois');

--
-- Injectar datos a Tabla de ciudad
--
INSERT INTO City (id, updated_at, created_at, state_id, name)
VALUES
('CA-LA', SYSDATE, SYSDATE, 'CA', 'Los Angeles'),
('NY-NY', SYSDATE, SYSDATE, 'NY', 'New York'),
('TX-HOU', SYSDATE, SYSDATE, 'TX', 'Houston'),
('FL-MIA', SYSDATE, SYSDATE, 'FL', 'Miami'),
('IL-CHI', SYSDATE, SYSDATE, 'IL', 'Chicago');

--
-- Injectar datos a Tabla de comodidad
--
INSERT INTO Amenity (id, updated_at, created_at, name)
VALUES
('WIFI', SYSDATE, SYSDATE, 'Wi-Fi'),
('POOL', SYSDATE, SYSDATE, 'Swimming Pool'),
('GYM', SYSDATE, SYSDATE, 'Gym'),
('AC', SYSDATE, SYSDATE, 'Air Conditioning'),
('TV', SYSDATE, SYSDATE, 'Television');

--
-- Injectar datos a Tabla de lugar
--
INSERT INTO Place (id, updated_at, created_at, user_id, name, city_id, description, number_rooms, number_bathrooms, max_guest, price_by_night, latitude, longitude)
VALUES
('place1', SYSDATE, SYSDATE, 'user1', 'Cozy Apartment', 'CA-LA', 'A small but comfortable apartment', 1, 1, 2, 100, 34.0522, -118.2437),
('place2', SYSDATE, SYSDATE, 'user2', 'Luxury Villa', 'FL-MIA', 'A luxurious villa with a private beach', 4, 3, 8, 500, 25.7617, -80.1918),
('place3', SYSDATE, SYSDATE, 'user3', 'Modern Loft', 'NY-NY', 'A stylish loft in the heart of the city', 2, 2, 4, 200, 40.7128, -74.0060),
('place4', SYSDATE, SYSDATE, 'user4', 'Family Home', 'TX-HOU', 'A spacious home perfect for families', 3, 2, 6, 150, 29.7604, -95.3698),
('place5', SYSDATE, SYSDATE, 'user5', 'Studio Apartment', 'IL-CHI', 'A cozy studio in a vibrant neighborhood', 1, 1, 2, 80, 41.8781, -87.6298);

--
-- Injectar datos a Tabla de review
--
INSERT INTO Review (id, updated_at, created_at, user_id, place_id, text)
VALUES
('review1', SYSDATE, SYSDATE, 'user2', 'place1', 'Great location!'),
('review2', SYSDATE, SYSDATE, 'user3', 'place2', 'Amazing villa!'),
('review3', SYSDATE, SYSDATE, 'user1', 'place3', 'Loved the loft!'),
('review4', SYSDATE, SYSDATE, 'user4', 'place4', 'Perfect for families!'),
('review5', SYSDATE, SYSDATE, 'user5', 'place5', 'Cozy and convenient!');

--
-- Injectar datos a lugar de comodidad
--
INSERT INTO PlaceAmenity (amenity_id, place_id)
VALUES
('WIFI', 'place1'),
('POOL', 'place2'),
('GYM', 'place3'),
('AC', 'place4'),
('TV', 'place5'),
('WIFI', 'place2'),
('POOL', 'place3'),
('GYM', 'place4'),
('AC', 'place5');