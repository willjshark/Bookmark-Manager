
As a user
To visit my favorite web pages easily
I would like to see a list of my bookmarks

As a user
To keep track of my favourite websites
I would like to add bookmark to my bookmark list




title Bookmark domain model

User-->client:Click "Show bookmarks" button

client-->server:GET "/bookmarks"

server-->client:200 response return "bookmarks.erb"

client-->User:Show formatted HTML "bookmarks.erb"


# How to use database

- Connect to psql
- Create the database using the psql command CREATE DATABASE bookmark_manager;
- Connect to the database using the pqsl command \c bookmark_manager;
- Run the query we have saved in the file 01_create_bookmarks_table.

- You also need to repeat these steps for the test database
- CREATE DATABASE "bookmark_manager_test";
- CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));