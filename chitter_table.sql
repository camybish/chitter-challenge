CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username text,
    name text,
    email text,
    password text
);

CREATE TABLE peeps (
    id SERIAL PRIMARY KEY,
    time text, 
    content text, 
    user_id int,
  constraint fk_user foreign key(user_id)
    references users(id)
    on delete cascade
);