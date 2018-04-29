#!/bin/bash
ssh devops@192.168.144.142 "mysql -u root NASA -e 'insert into Persons (PersonID, LastName, FirstName, Address, City) values (1, Kraft, Christopher, NASA, Houston);'"
