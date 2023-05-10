## Chitter Challenge

# Tasks
BASIC --> Post a 'peep', 'Peeps' shown newest first (with time), Sign Up 
HARDER --> Login and logout to own account 
ADVANCED --> Email if tagged in a 'peep'

# Database
Users table;
username, name, email, password

Peeps table;
time, content, username_id


# Pages 
GET / 
DISPLAYS newest 'peeps' shown first from database
(body parameters for login - email, password)
LOGIN with link to signup
post a new peep - link to /new

GET /signup
(body parameters - username, name, email, password)
SIGNUP by adding new entry to users table
POST /signup
redirect to GET /

GET /new
(body parameters - time, content, username_id)
POST /new
user enters content and posts to chitter feed, time and username_id add too to database


# Checklist 

Get the localhost version of the website set up **framework done**
- database connection will need to connect to test and the local database (DB)
- the spec files will need to be fleshed out and tested minimally before implimenting this (SPECS)
- all those god damn repo and basic ass ruby files will need to be made (REPO & RUBIES)
    - the repos will need find, all, create methods for the logins and the peeps (+ METHODS)
- THEN you can get into the web implimentation (APP)
- finally you use render to get it all online