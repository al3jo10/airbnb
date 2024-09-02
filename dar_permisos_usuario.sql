-- Creando provilegios para el usuario
GRANT CREATE SESSION, CREATE TABLE, CREATE VIEW, CREATE SEQUENCE, CREATE SYNONYM
TO airbnb;

--
-- ASIGNAR QUOTA AL USUARIO
--
-- Esto significa que al usuario se le va dar una cierta cantidad de memoria, que va poder usar en la base de datos, 
-- es bueno no colocarle una quota ilimitada para no tener problemas de seguridad en la base de datos
--
ALTER USER AIRBNB QUOTA 10G ON USERS;

--
-- CAMBIA DE esquema para alejo
--
-- Aca lo que hace es cambiar del usuario sys, para el usuario alejo, se coloca en mayuscula, por el motivo de que
-- asi se guarda en la base de datos, si queremos que el nombre tenga mayuculas y minusculas o solo minusculas, 
-- hay que crear el usuario con comillas dobles. EJ: CREATE USER "Burbano" IDENTIFIED BY 12345;
--
ALTER SESSION SET CURRENT_SCHEMA=AIRBNB; 
