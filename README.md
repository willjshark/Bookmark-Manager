As a user
To visit my favorite web pages easily
I would like to see a list of my bookmarks

title Bookmark domain model

User-->client:Click "Show bookmarks" button

client-->server:GET "/bookmarks"

server-->client:200 response return "bookmarks.erb"

client-->User:Show formatted HTML "bookmarks.erb"