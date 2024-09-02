--
--Primero hay que hacer una limpieza del usuario, para que no cree un error, 
--esto es en caso de que el usuario ya exista, entonces primero lo elimina y despues vuelve y lo crear
--
-- CLEANING
--
DROP USER airbnb CASCADE;

-- Creando el usuario
CREATE USER airbnb IDENTIFIED BY 12345;

