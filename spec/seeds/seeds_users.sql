TRUNCATE TABLE users RESTART IDENTITY CASCADE;

INSERT INTO users (username, name, email, password) VALUES('Admin', 'Ed Minn', 'EdMinn@email.com', 'password123');
INSERT INTO users (username, name, email, password) VALUES('camybish', 'Cameron Bishop', 'camybish@piesize.co.uk', 'password234');