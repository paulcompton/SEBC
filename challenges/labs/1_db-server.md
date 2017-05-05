#Host
```
+-------------------------------------------------+
| @@hostname                                      |
+-------------------------------------------------+
| ip-172-31-1-226.ap-southeast-2.compute.internal |
+-------------------------------------------------+
```

#Version
```
MariaDB [(none)]> select @@version;
+----------------+
| @@version      |
+----------------+
| 5.5.56-MariaDB |
+----------------+
1 row in set (0.00 sec)
```

#databases
```
MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| hive               |
| hue                |
| mysql              |
| oozie              |
| performance_schema |
| rman               |
| scm                |
| sentry             |
+--------------------+
9 rows in set (0.00 sec)
```