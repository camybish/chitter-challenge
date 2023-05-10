TRUNCATE TABLE users RESTART IDENTITY CASCADE;

INSERT INTO users (username, name, email, password) VALUES('Admin', 'Ed Minn', 'EdMinn@email.com', 'password123');