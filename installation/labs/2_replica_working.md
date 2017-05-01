DATABASE CONFIG
 install mariadb (nodes 1,2)
sudo yum install mariadb-server

stop the service
sudo service mariadb stop

Check files removed from /var/lib/mysql/

vi /etc/my.cnf

##File contents
[mysqld]
transaction-isolation = READ-COMMITTED
# Disabling symbolic-links is recommended to prevent assorted security risks;
# to do so, uncomment this line:
# symbolic-links = 0

key_buffer = 16M
key_buffer_size = 32M
max_allowed_packet = 32M
thread_stack = 256K
thread_cache_size = 64
query_cache_limit = 8M
query_cache_size = 64M
query_cache_type = 1

max_connections = 550
#expire_logs_days = 10
#max_binlog_size = 100M


#replication settings
bind-address = 172.31.5.197
server-id = 1
binlog_do_db = ACTIVITYMONITOR

#log_bin should be on a disk with enough free space. Replace '/var/lib/mysql/mysql_binary_log' with an appropriate path for your system
#and chown the specified folder to the mysql user.
log_bin=/var/lib/mysql/mysql_binary_log

binlog_format = mixed

read_buffer_size = 2M
read_rnd_buffer_size = 16M
sort_buffer_size = 8M
join_buffer_size = 8M

# InnoDB settings
innodb_file_per_table = 1
innodb_flush_log_at_trx_commit  = 2
innodb_log_buffer_size = 64M
innodb_buffer_pool_size = 4G
innodb_thread_concurrency = 8
innodb_flush_method = O_DIRECT
innodb_log_file_size = 512M

[mysqld_safe]
log-error=/var/log/mariadb/mariadb.log
pid-file=/var/run/mariadb/mariadb.pid
## File end

Set mariadb to start on boot and start the service
sudo /sbin/chkconfig mariadb on
sudo service mariadb start

INSTALL THE JDBC
yum install wget
wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.42.tar.gz
tar zxvf mysql-connector-java-5.1.42.tar.gz
sudo cp mysql-connector-java-5.1.42/mysql-connector-java-5.1.42-bin.jar /usr/share/java/mysql-connector-java.jar
sudo mkdir -p /usr/share/java/
sudo cp mysql-connector-java-5.1.42/mysql-connector-java-5.1.42-bin.jar /usr/share/java/mysql-connector-java.jar

mysql -u root -p
create database cm DEFAULT CHARACTER SET utf8;
create database amon DEFAULT CHARACTER SET utf8;
create database rman DEFAULT CHARACTER SET utf8;
create database metastore DEFAULT CHARACTER SET utf8;
create database sentry DEFAULT CHARACTER SET utf8;
create database nav DEFAULT CHARACTER SET utf8;
create database navms DEFAULT CHARACTER SET utf8;

grant all on cm.* TO 'cm'@'%' IDENTIFIED BY 'servian';
grant all on amon.* TO 'navms'@'%' IDENTIFIED BY 'amon_password';
grant all on rman.* TO 'rman'@'%' IDENTIFIED BY 'rman_password';
grant all on metastore.* TO 'hive'@'%' IDENTIFIED BY 'hive_password';
grant all on sentry.* TO 'sentry'@'%' IDENTIFIED BY 'sentry_password';
grant all on nav.* TO 'nav'@'%' IDENTIFIED BY 'nav_password';
grant all on navms.* TO 'navms'@'%' IDENTIFIED BY 'navms_password';

create database hue default character set utf8 default collate utf8_general_ci;
grant all on hue.* to 'hue'@'%' identified by 'huepassword';

create database oozie;
grant all privileges on oozie.* to 'oozie'@'localhost' identified by 'oozie';
grant all privileges on oozie.* to 'oozie'@'%' identified by 'oozie';
sudo cp mysql-connector-java-5.1.42/mysql-connector-java-5.1.42-bin.jar /var/lib/oozie/mysql-connector-java.jar

select * from information_schema.schemata;



MASTER SERVER
GRANT REPLICATION SLAVE ON *.* TO 'repuser'@'%' IDENTIFIED BY 'servian'
FLUSH PRIVILEGES;
USE ACTIVITYMONITOR;
FLUSH TABLES WITH READ LOCK;
SHOW MASTER STATUS;
+-------------------------+----------+-----------------+------------------+
| File                    | Position | Binlog_Do_DB    | Binlog_Ignore_DB |
+-------------------------+----------+-----------------+------------------+
| mysql_binary_log.000004 |      466 | ACTIVITYMONITOR |                  |
+-------------------------+----------+-----------------+------------------+

seperate window 
sudo mysqldump -u root -p --opt ACTIVITYMONITOR > activitymonitor.sql

UNLOCK TABLES;



#SLAVE SERVER


CREATE USER 'repuser'@'%' IDENTIFIED BY 'servian';
GRANT ALL PRIVILEGES ON * . * TO 'repuser'@'%' ;
FLUSH PRIVILEGES;
create database ACTIVITYMONITOR DEFAULT CHARACTER SET utf8;
EXIT

mysql -u root -p ACTIVITYMONITOR < /root/activitymonitor.sql 

vi /etc/my.cnf

##File contents
[mysqld]
transaction-isolation = READ-COMMITTED
# Disabling symbolic-links is recommended to prevent assorted security risks;
# to do so, uncomment this line:
# symbolic-links = 0

key_buffer = 16M
key_buffer_size = 32M
max_allowed_packet = 32M
thread_stack = 256K
thread_cache_size = 64
query_cache_limit = 8M
query_cache_size = 64M
query_cache_type = 1

max_connections = 550
#expire_logs_days = 10
#max_binlog_size = 100M
# replication settings
server-id = 2
relay-log               = /var/log/mysql/mysql-relay-bin.log
binlog_do_db            = ACTIVITYMONITOR

#log_bin should be on a disk with enough free space. Replace '/var/lib/mysql/mysql_binary_log' with an appropriate path for your system
#and chown the specified folder to the mysql user.
log_bin=/var/lib/mysql/mysql_binary_log

binlog_format = mixed

read_buffer_size = 2M
read_rnd_buffer_size = 16M
sort_buffer_size = 8M
join_buffer_size = 8M

# InnoDB settings
innodb_file_per_table = 1
innodb_flush_log_at_trx_commit  = 2
innodb_log_buffer_size = 64M
innodb_buffer_pool_size = 4G
innodb_thread_concurrency = 8
innodb_flush_method = O_DIRECT
innodb_log_file_size = 512M

[mysqld_safe]
log-error=/var/log/mariadb/mariadb.log
pid-file=/var/run/mariadb/mariadb.pid
## File end

 sudo service mariadb restart
 mysql -u root -p
 CHANGE MASTER TO MASTER_HOST='172.31.5.197',MASTER_USER='repuser', MASTER_PASSWORD='servian', MASTER_LOG_FILE='mysql-bin.000001', MASTER_LOG_POS=  466
 
 
# Replica not working yet
 
 
#CM INSTALL
#download the repo
cd /etc/yum.repos.d
wget https://archive.cloudera.com/cm5/redhat/7/x86_64/cm/cloudera-manager.repo

vi cloudera-manager.repo 
baseurl=https://archive.cloudera.com/cm5/redhat/7/x86_64/cm/5.9.2
sudo yum install oracle-j2sdk1.7

/usr/share/cmf/schema/scm_prepare_database.sh mysql cm cm -h ip-172-31-5-197.ap-southeast-2.compute.internal 

sudo yum install cloudera-manager-daemons cloudera-manager-server
 
 sudo service cloudera-scm-server start
 
 
 ip-172-31-5-197.ap-southeast-2.compute.internal
 ip-172-31-9-1.ap-southeast-2.compute.internal
 ip-172-31-1-73.ap-southeast-2.compute.internal
 ip-172-31-5-110.ap-southeast-2.compute.internal
 
 
 
 
 
 
 