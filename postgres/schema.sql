CREATE DATABASE dbproj;
CREATE USER admin_user WITH PASSWORD 'admin_pass';
GRANT ALL PRIVILEGES ON DATABASE dbproj TO admin_user;
\connect dbproj