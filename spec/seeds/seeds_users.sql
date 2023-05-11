TRUNCATE TABLE users RESTART IDENTITY CASCADE;

INSERT INTO users (id, username, name, email, password) VALUES('1', 'Admin', 'Ed Minn', 'EdMinn@email.com', 'password123');
INSERT INTO users (id, username, name, email, password) VALUES('2','camybish', 'Cameron Bishop', 'camybish@piesize.co.uk', 'password234');