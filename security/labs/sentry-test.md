```
#SENTRY CONFIGURATION
##sentry-site.xml
```
<property>
    <name>sentry.service.server.rpc-address</name>
    <value>ip-172-31-1-73.ap-southeast-2.compute.internal</value>
</property>
  <property>
    <name>sentry.service.server.rpc-port</name>
    <value>8038</value>
</property>
<property>
    <name>sentry.service.admin.group</name>
    <value>hive,impala,hue</value>
</property>
<property>
    <name>sentry.service.allow.connect</name>
    <value>hive,impala,hue,hdfs</value>
</property>
<property>
    <name>sentry.store.group.mapping</name>
    <value>org.apache.sentry.provider.common.HadoopGroupMappingService</value>
</property>
<property>
    <name>sentry.service.server.principal</name>
    <value>sentry/ip-172-31-1-73.ap-southeast-2.compute.internal@HADOOP.COM</value>
</property>
<property>
    <name>sentry.service.security.mode</name>
    <value>kerberos</value>
</property>
<property>
    <name>sentry.service.server.keytab</name>
    <value>sentry.keytab</value>
</property>
<property>
    <name>sentry.store.jdbc.url</name>
    <value>jdbc:<JDBC connection URL for backend database></value>
</property>
<property>
    <name>sentry.store.jdbc.driver</name>
    <value><JDBC Driver class for backend database></value>
</property>
<property>
    <name>sentry.store.jdbc.user</name>
    <value><User ID for backend database user></value>
</property>
<property>
    <name>sentry.store.jdbc.password</name>
    <value><Password for backend database user></value>
</property>
<property>
    <name>sentry.service.processor.factories</name>
    <value>org.apache.sentry.provider.db.service.thrift.SentryPolicyStoreProcessorFactory, 
             org.apache.sentry.hdfs.SentryHDFSServiceProcessorFactory</value>
</property>
<property>
    <name>sentry.policy.store.plugins</name>
    <value>org.apache.sentry.hdfs.SentryPlugin</value>
</property>
<property>
    <name>sentry.hdfs.integration.path.prefixes</name>
    <value>/user/hive/warehouse</value>
</property>
````

#HIVE CONFIGURATION
##sentry-site.xml
```
<property>
    <name>hive.sentry.server</name>
    <value>ip-172-31-1-73.ap-southeast-2.compute.internal</value>
</property>
<property>
    <name>sentry.service.server.principal</name>
    <value>sentry/_HOST@HADOOP.COM</value>
</property>
<property>
    <name>sentry.service.security.mode</name>
    <value>kerberos</value>
</property>
<property>
    <name>sentry.hive.provider.backend</name>
    <value>org.apache.sentry.provider.db.SimpleDBProviderBackend</value>
</property>
<property>
    <name>sentry.service.client.server.rpc-address</name>
    <value>example.cloudera.com</value>
</property>
<property>
    <name>sentry.service.client.server.rpc-port</name>
    <value>8038</value>
</property>
<property>
    <name>hive.sentry.provider</name>
    <value>org.apache.sentry.provider.file.HadoopGroupResourceAuthorizationProvider</value>
</property>
<property>
    <name>hive.sentry.failure.hooks</name>
    <value>com.cloudera.navigator.audit.hive.HiveSentryOnFailureHook</value>
</property>
```






```
su - paulcompton
beeline> !connect jdbc:hive2://ip-172-31-1-73.ap-southeast-2.compute.internal:10000/default;principal=hive/ip-172-31-1-73.ap-southeast-2.compute.internal@REALM.COM
Connecting to jdbc:hive2://ip-172-31-1-73.ap-southeast-2.compute.internal:10000/default;principal=hive/ip-172-31-1-73.ap-southeast-2.compute.internal@REALM.COM
Connected to: Apache Hive (version 1.1.0-cdh5.9.2)
Driver: Hive JDBC (version 1.1.0-cdh5.9.2)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://ip-172-31-1-73.ap-southeast-2> SHOW TABLES
. . . . . . . . . . . . . . . . . . . . . . .> ;
INFO  : Compiling command(queryId=hive_20170503200909_3fa579da-2fa6-4799-9e85-849b2891f8af): SHOW TABLES
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170503200909_3fa579da-2fa6-4799-9e85-849b2891f8af); Time taken: 0.563 seconds
INFO  : Executing command(queryId=hive_20170503200909_3fa579da-2fa6-4799-9e85-849b2891f8af): SHOW TABLES
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170503200909_3fa579da-2fa6-4799-9e85-849b2891f8af); Time taken: 0.066 seconds
INFO  : OK
+-----------+--+
| tab_name  |
+-----------+--+
+-----------+--+
No rows selected (1.894 seconds)
0: jdbc:hive2://ip-172-31-1-73.ap-southeast-2> 
```


```
1: jdbc:hive2://ip-172-31-1-73.ap-southeast-2> show tables;
INFO  : Compiling command(queryId=hive_20170503222323_aecdad26-45b0-4c95-b609-a6f2c04ae6de): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170503222323_aecdad26-45b0-4c95-b609-a6f2c04ae6de); Time taken: 0.721 seconds
INFO  : Executing command(queryId=hive_20170503222323_aecdad26-45b0-4c95-b609-a6f2c04ae6de): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170503222323_aecdad26-45b0-4c95-b609-a6f2c04ae6de); Time taken: 0.257 seconds
INFO  : OK
+-----------+--+
| tab_name  |
+-----------+--+
+-----------+--+
No rows selected (2.259 seconds)
1: jdbc:hive2://ip-172-31-1-73.ap-southeast-2> CREATE ROLE sentry_admin;
```

sudo groupadd selector
sudo groupadd inserters
sudo useradd -u 1100 -g selector george
sudo useradd -u 1200 -g inserters ferdinand
kadmin.local: add_principal george
kadmin.local: add_principal ferdinand

beeline
CREATE ROLE reads;
CREATE ROLE writes;

GRANT SELECT ON DATABASE default TO ROLE reads;
GRANT ROLE reads TO GROUP selector;

REVOKE ALL ON DATABASE default FROM ROLE writes;
GRANT SELECT ON default.test1 TO ROLE writes;
GRANT ROLE writes TO GROUP inserters;



#GEORGE AND FERDINAND
## TABLES ARE TEST1 AND TEST2
[root@ip-172-31-1-73 ~]# su - george
[george@ip-172-31-1-73 ~]$ kinit
Password for george@HADOOP.COM: 
[george@ip-172-31-1-73 ~]$ beeline
Beeline version 1.1.0-cdh5.9.2 by Apache Hive
beeline> !connect jdbc:hive2://ip-172-31-1-73.ap-southeast-2.compute.internal:10000/default;principal=hive/ip-172-31-1-73.ap-southeast-2.compute.internal@REALM.COM
scan complete in 2ms
Connecting to jdbc:hive2://ip-172-31-1-73.ap-southeast-2.compute.internal:10000/default;principal=hive/ip-172-31-1-73.ap-southeast-2.compute.internal@REALM.COM
Connected to: Apache Hive (version 1.1.0-cdh5.9.2)
Driver: Hive JDBC (version 1.1.0-cdh5.9.2)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://ip-172-31-1-73.ap-southeast-2> show tables;
INFO  : Compiling command(queryId=hive_20170503223636_8a9cb625-a937-429f-bb4c-a51e391f1e13): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170503223636_8a9cb625-a937-429f-bb4c-a51e391f1e13); Time taken: 0.064 seconds
INFO  : Executing command(queryId=hive_20170503223636_8a9cb625-a937-429f-bb4c-a51e391f1e13): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170503223636_8a9cb625-a937-429f-bb4c-a51e391f1e13); Time taken: 0.156 seconds
INFO  : OK
+-----------+--+
| tab_name  |
+-----------+--+
| test1     |
| test2     |
+-----------+--+
2 rows selected (0.317 seconds)
0: jdbc:hive2://ip-172-31-1-73.ap-southeast-2> [george@ip-172-31-1-73 ~]$ ^C
[george@ip-172-31-1-73 ~]$ ^C
[george@ip-172-31-1-73 ~]$ exit
logout
[root@ip-172-31-1-73 ~]# su - ferdinand
[ferdinand@ip-172-31-1-73 ~]$ kinit
Password for ferdinand@HADOOP.COM: 
[ferdinand@ip-172-31-1-73 ~]$ beeline
Beeline version 1.1.0-cdh5.9.2 by Apache Hive
beeline> !connect jdbc:hive2://ip-172-31-1-73.ap-southeast-2.compute.internal:10000/default;principal=hive/ip-172-31-1-73.ap-southeast-2.compute.internal@REALM.COM
scan complete in 2ms
Connecting to jdbc:hive2://ip-172-31-1-73.ap-southeast-2.compute.internal:10000/default;principal=hive/ip-172-31-1-73.ap-southeast-2.compute.internal@REALM.COM
Connected to: Apache Hive (version 1.1.0-cdh5.9.2)
Driver: Hive JDBC (version 1.1.0-cdh5.9.2)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://ip-172-31-1-73.ap-southeast-2> show tables
. . . . . . . . . . . . . . . . . . . . . . .> ;
INFO  : Compiling command(queryId=hive_20170503223737_409c6580-9715-4f92-8d16-272b8797989c): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170503223737_409c6580-9715-4f92-8d16-272b8797989c); Time taken: 0.065 seconds
INFO  : Executing command(queryId=hive_20170503223737_409c6580-9715-4f92-8d16-272b8797989c): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170503223737_409c6580-9715-4f92-8d16-272b8797989c); Time taken: 0.145 seconds
INFO  : OK
+-----------+--+
| tab_name  |
+-----------+--+
| test1     |
+-----------+--+
1 row selected (0.323 seconds)
```
