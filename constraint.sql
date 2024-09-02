--
-- Tabla de usuario
--
ALTER TABLE Userbnb ADD CONSTRAINT PK_User PRIMARY KEY (id);

--
-- Tabla de Estado
--
ALTER TABLE State ADD CONSTRAINT PK_State PRIMARY KEY (id);

--
-- Tabla de ciudad
--
ALTER TABLE City ADD CONSTRAINT PK_City PRIMARY KEY (id);
ALTER TABLE City ADD CONSTRAINT FK_City_State FOREIGN KEY (state_id) REFERENCES State(id);

--
-- Tabla de comodidad
--
ALTER TABLE Amenity ADD CONSTRAINT PK_Amenity PRIMARY KEY (id);

--
-- Tabla de lugar
--
ALTER TABLE Place ADD CONSTRAINT PK_Place PRIMARY KEY (id);
ALTER TABLE Place ADD CONSTRAINT FK_Place_User FOREIGN KEY (user_id) REFERENCES Userbnb(id);
ALTER TABLE Place ADD CONSTRAINT FK_Place_City FOREIGN KEY (city_id) REFERENCES City(id);
ALTER TABLE Place MODIFY (number_rooms DEFAULT 0);
ALTER TABLE Place MODIFY (number_bathrooms DEFAULT 0);
ALTER TABLE Place MODIFY (max_guest DEFAULT 0);
ALTER TABLE Place MODIFY (price_by_night DEFAULT 0);

--
-- Tabla de review
--
ALTER TABLE Review ADD CONSTRAINT PK_Review PRIMARY KEY (id);
ALTER TABLE Review ADD CONSTRAINT FK_Review_User FOREIGN KEY (user_id) REFERENCES Userbnb(id);
ALTER TABLE Review ADD CONSTRAINT FK_Review_Place FOREIGN KEY (place_id) REFERENCES Place(id);

--
-- Tabla de lugar de comodidad
--
ALTER TABLE PlaceAmenity ADD CONSTRAINT PK_PlaceAmenity PRIMARY KEY (amenity_id, place_id);
ALTER TABLE PlaceAmenity ADD CONSTRAINT FK_PlaceAmenity_Amenity FOREIGN KEY (amenity_id) REFERENCES Amenity(id);
ALTER TABLE PlaceAmenity ADD CONSTRAINT FK_PlaceAmenity_Place FOREIGN KEY (place_id) REFERENCES Place(id);