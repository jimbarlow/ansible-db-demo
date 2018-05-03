#!/bin/bash
watch "mysql -u root NASA -e '(SELECT * FROM persons) ;'"
