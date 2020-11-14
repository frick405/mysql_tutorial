#! /bin/sh

mysql_root = "root"
mysql_pwd = "Coaudtjr123!"

mysql -u@mysql_root -p
expect -re "Enter Password:"
send $mysql_pwd

interact


