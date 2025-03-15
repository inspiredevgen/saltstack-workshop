base:
  '*server*':
    - config.create-users

webserver:
  '*web*':
    - httpd

db:
  '*db*':
    - mysql-server

app:
  '*app*':