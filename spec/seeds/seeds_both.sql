--DROP TABLE IF EXISTS users;

--TRUNCATE TABLE users RESTART IDENTITY;

INSERT INTO users (username, name, email, password) VALUES('Admin', 'Ed Minn', 'EdMinn@email.com', 'password123');
INSERT INTO users (username, name, email, password) VALUES('camybish', 'Cameron Bishop', 'camybish@piesize.co.uk', 'password234');

--DROP TABLE IF EXISTS peeps;

--TRUNCATE TABLE peeps RESTART IDENTITY;

INSERT INTO peeps (time, content, user_id) VALUES('20030510 10:34:09 AM', 'I am a big fan of Jar Jar Binks', '1');
INSERT INTO peeps (time, content, user_id) VALUES('20220310 05:21:52 AM', 'It is a great day today', '1');
INSERT INTO peeps (time, content, user_id) VALUES('20201225 09:58:52 AM', 'I love waking up late at Christmas', '1');