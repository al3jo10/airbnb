--
--Crear Tabla de usuario
--
CREATE TABLE Userbnb (
    id VARCHAR2(255),
    updated_at TIMESTAMP,
    created_at TIMESTAMP,
    email VARCHAR2(255),
    password VARCHAR2(255),
    first_name VARCHAR2(255),
    last_name VARCHAR2(255)
);

--
--Crear Tabla de estado
--
CREATE TABLE State (
    id VARCHAR2(255),
    updated_at TIMESTAMP,
    created_at TIMESTAMP,
    name VARCHAR2(255)
);

--
--Crear Tabla de ciudad
--
CREATE TABLE City (
    id VARCHAR2(255),
    updated_at TIMESTAMP,
    created_at TIMESTAMP,
    state_id VARCHAR2(255),
    name VARCHAR2(255)
);

--
--Crear Tabla de comodidad
--
CREATE TABLE Amenity (
    id VARCHAR2(255),
    updated_at TIMESTAMP,
    created_at TIMESTAMP,
    name VARCHAR2(255)
);

--
--Crear Tabla de lugar
--
CREATE TABLE Place (
    id VARCHAR2(255),
    updated_at TIMESTAMP,
    created_at TIMESTAMP,
    user_id VARCHAR2(255),
    name VARCHAR2(255),
    city_id VARCHAR2(255),
    description VARCHAR2(4000),
    number_rooms INTEGER,
    number_bathrooms INTEGER,
    max_guest INTEGER,
    price_by_night INTEGER,
    latitude FLOAT,
    longitude FLOAT
);

--
--Crear Tabla del review
--
CREATE TABLE Review (
    id VARCHAR2(255),
    updated_at TIMESTAMP,
    created_at TIMESTAMP,
    user_id VARCHAR2(255),
    place_id VARCHAR2(255),
    text VARCHAR2(4000)
);

--
--Crear Tabla de Lugar de comodidad
--
CREATE TABLE PlaceAmenity (
    amenity_id VARCHAR2(255),
    place_id VARCHAR2(255)
);