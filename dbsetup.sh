mysql -u root -e 'create database NASA;'
mysql -u root -e 'CREATE TABLE NASA.persons ( id int, LastName varchar(55), FirstName varchar(55), City varchar(55), State varchar(55) );'
mysql -u root -e "CREATE USER 'haproxy'@'localhost';"
mysql -u root -e "CREATE USER 'haproxy'@'haproxy.lab.example.com';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'haproxy'@'haproxy.lab.example.com';"

