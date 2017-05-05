```

[paulcompton@ip-172-31-10-6 ~]$ hdfs dfs -ls /user
Found 10 items
drwxr-xr-x   - admin      admin               0 2017-05-04 21:22 /user/admin
drwxr-xr-x   - cate       supergroup          0 2017-05-04 21:24 /user/cate
drwxr-xr-x   - hdfs       supergroup          0 2017-05-04 21:22 /user/hdfs
drwxrwxrwx   - mapred     hadoop              0 2017-05-04 21:15 /user/history
drwxrwxr-t   - hive       hive                0 2017-05-04 21:16 /user/hive
drwxrwxr-x   - hue        hue                 0 2017-05-04 21:16 /user/hue
drwxrwxr-x   - impala     impala              0 2017-05-04 21:16 /user/impala
drwxr-xr-x   - jemaine    supergroup          0 2017-05-04 21:24 /user/jemaine
drwxrwxr-x   - oozie      oozie               0 2017-05-04 21:16 /user/oozie
drwxr-xr-x   - paulompton supergroup          0 2017-05-04 21:24 /user/paulcompton

```

```
{
  "items" : [ {
    "hostId" : "988a8a40-77ac-477b-b4c9-b227460d2ba2",
    "ipAddress" : "172.31.1.226",
    "hostname" : "manager.paulcompton",
    "rackId" : "/default",
    "hostUrl" : "http://manager.paulcompton:7180/cmf/hostRedirect/988a8a40-77ac-477b-b4c9-b227460d2ba2",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15332311040
  }, {
    "hostId" : "b7b2e567-f9f5-49b8-8746-d6f5a47623d7",
    "ipAddress" : "172.31.10.6",
    "hostname" : "node1.paulcompton",
    "rackId" : "/default",
    "hostUrl" : "http://manager.paulcompton:7180/cmf/hostRedirect/b7b2e567-f9f5-49b8-8746-d6f5a47623d7",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15332311040
  }, {
    "hostId" : "ee55aa20-ccc0-4320-8e73-f9f4a8954e8c",
    "ipAddress" : "172.31.3.244",
    "hostname" : "node2.paulcompton",
    "rackId" : "/default",
    "hostUrl" : "http://manager.paulcompton:7180/cmf/hostRedirect/ee55aa20-ccc0-4320-8e73-f9f4a8954e8c",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15332311040
  }, {
    "hostId" : "d643de5e-9d22-494d-a30a-266af913b6b6",
    "ipAddress" : "172.31.3.150",
    "hostname" : "node3.paulcompton",
    "rackId" : "/default",
    "hostUrl" : "http://manager.paulcompton:7180/cmf/hostRedirect/d643de5e-9d22-494d-a30a-266af913b6b6",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15332311040
  }, {
    "hostId" : "c467a8df-a08c-41cc-9a2f-92282daea16b",
    "ipAddress" : "172.31.13.234",
    "hostname" : "node4.paulcompton",
    "rackId" : "/default",
    "hostUrl" : "http://manager.paulcompton:7180/cmf/hostRedirect/c467a8df-a08c-41cc-9a2f-92282daea16b",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15332311040
  } ]
}
```


```
{
  "items" : [ {
    "name" : "hive",
    "type" : "HIVE",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://manager.paulcompton:7180/cmf/serviceRedirect/hive",
    "serviceState" : "STARTED",
    "healthSummary" : "BAD",
    "healthChecks" : [ {
      "name" : "HIVE_HIVEMETASTORES_HEALTHY",
      "summary" : "BAD"
    }, {
      "name" : "HIVE_HIVESERVER2S_HEALTHY",
      "summary" : "BAD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "Hive"
  }, {
    "name" : "zookeeper",
    "type" : "ZOOKEEPER",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://manager.paulcompton:7180/cmf/serviceRedirect/zookeeper",
    "serviceState" : "STARTED",
    "healthSummary" : "BAD",
    "healthChecks" : [ {
      "name" : "ZOOKEEPER_CANARY_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "ZOOKEEPER_SERVERS_HEALTHY",
      "summary" : "BAD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "ZooKeeper"
  }, {
    "name" : "hue",
    "type" : "HUE",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://manager.paulcompton:7180/cmf/serviceRedirect/hue",
    "serviceState" : "STARTED",
    "healthSummary" : "BAD",
    "healthChecks" : [ {
      "name" : "HUE_HUE_SERVERS_HEALTHY",
      "summary" : "BAD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "Hue"
  }, {
    "name" : "oozie",
    "type" : "OOZIE",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://manager.paulcompton:7180/cmf/serviceRedirect/oozie",
    "serviceState" : "STARTED",
    "healthSummary" : "BAD",
    "healthChecks" : [ {
      "name" : "OOZIE_OOZIE_SERVERS_HEALTHY",
      "summary" : "BAD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "Oozie"
  }, {
    "name" : "impala",
    "type" : "IMPALA",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://manager.paulcompton:7180/cmf/serviceRedirect/impala",
    "serviceState" : "STARTED",
    "healthSummary" : "BAD",
    "healthChecks" : [ {
      "name" : "IMPALA_ASSIGNMENT_LOCALITY",
      "summary" : "DISABLED"
    }, {
      "name" : "IMPALA_CATALOGSERVER_HEALTH",
      "summary" : "BAD"
    }, {
      "name" : "IMPALA_IMPALADS_HEALTHY",
      "summary" : "BAD"
    }, {
      "name" : "IMPALA_STATESTORE_HEALTH",
      "summary" : "BAD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "Impala"
  }, {
    "name" : "yarn",
    "type" : "YARN",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://manager.paulcompton:7180/cmf/serviceRedirect/yarn",
    "serviceState" : "STARTED",
    "healthSummary" : "BAD",
    "healthChecks" : [ {
      "name" : "YARN_JOBHISTORY_HEALTH",
      "summary" : "BAD"
    }, {
      "name" : "YARN_NODE_MANAGERS_HEALTHY",
      "summary" : "BAD"
    }, {
      "name" : "YARN_RESOURCEMANAGERS_HEALTH",
      "summary" : "BAD"
    }, {
      "name" : "YARN_USAGE_AGGREGATION_HEALTH",
      "summary" : "DISABLED"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "YARN (MR2 Included)"
  }, {
    "name" : "hdfs",
    "type" : "HDFS",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://manager.paulcompton:7180/cmf/serviceRedirect/hdfs",
    "serviceState" : "STARTED",
    "healthSummary" : "BAD",
    "healthChecks" : [ {
      "name" : "HDFS_BLOCKS_WITH_CORRUPT_REPLICAS",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_CANARY_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_DATA_NODES_HEALTHY",
      "summary" : "BAD"
    }, {
      "name" : "HDFS_FREE_SPACE_REMAINING",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_HA_NAMENODE_HEALTH",
      "summary" : "BAD"
    }, {
      "name" : "HDFS_MISSING_BLOCKS",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_UNDER_REPLICATED_BLOCKS",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "HDFS"
  }, {
    "name" : "zookeeper2",
    "type" : "ZOOKEEPER",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://manager.paulcompton:7180/cmf/serviceRedirect/zookeeper2",
    "serviceState" : "STARTED",
    "healthSummary" : "BAD",
    "healthChecks" : [ {
      "name" : "ZOOKEEPER_CANARY_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "ZOOKEEPER_SERVERS_HEALTHY",
      "summary" : "BAD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "ZooKeeper-2"
  } ]
}

```