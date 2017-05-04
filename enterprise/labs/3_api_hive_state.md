```
# STOP HIVE
}[root@ip-172-31-5-197 ~]#curl -X POST  -u paulcompton:cloudera 'http://ec2-54-206-125-242.ap-southeast-2.compute.amazonaws.com:7180/api/v12/clusters/paulcompton/services/hive/commands/stop'
{
  "id" : 639,
  "name" : "Stop",
  "startTime" : "2017-05-03T05:48:31.288Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}  
#Check it has stopped
[root@ip-172-31-5-197 ~]#curl -X GET  -u paulcompton:cloudera 'http://ec2-54-206-125-242.ap-southeast-2.compute.amazonaws.com:7180/api/v12/clusters/paulcompton/services/hive'
{
  "name" : "hive",
  "type" : "HIVE",
  "clusterRef" : {
    "clusterName" : "cluster"
  },
  "serviceUrl" : "http://ip-172-31-8-254.ap-southeast-2.compute.internal:7180/cmf/serviceRedirect/hive",
  "roleInstancesUrl" : "http://ip-172-31-8-254.ap-southeast-2.compute.internal:7180/cmf/serviceRedirect/hive/instances",
  "serviceState" : "STOPPED",
  "healthSummary" : "DISABLED",
  "healthChecks" : [ {
    "name" : "HIVE_HIVEMETASTORES_HEALTHY",
    "summary" : "DISABLED",
    "suppressed" : false
  }, {
    "name" : "HIVE_HIVESERVER2S_HEALTHY",
    "summary" : "DISABLED",
    "suppressed" : false
  } ],
  "configStalenessStatus" : "FRESH",
  "clientConfigStalenessStatus" : "FRESH",
  "maintenanceMode" : false,
  "maintenanceOwners" : [ ],
  "displayName" : "Hive",
  "entityStatus" : "STOPPED"
}

#START HIVE
[root@ip-172-31-5-197 ~]# curl -X POST  -u paulcompton:cloudera 'http://ec2-54-206-125-242.ap-southeast-2.compute.amazonaws.com:7180/api/v12/clusters/paulcompton/services/hive/commands/start'
{
  "id" : 643,
  "name" : "Start",
  "startTime" : "2017-05-03T05:49:17.809Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}

#CHECK IT HAS STARTED
[root@ip-172-31-5-197 ~]# curl -X GET  -u paulcompton:cloudera 'http://ec2-54-206-125-242.ap-southeast-2.compute.amazonaws.com:7180/api/v12/clusters/paulcompton/services/hive'
{
  "name" : "hive",
  "type" : "HIVE",
  "clusterRef" : {
    "clusterName" : "cluster"
  },
  "serviceUrl" : "http://ip-172-31-8-254.ap-southeast-2.compute.internal:7180/cmf/serviceRedirect/hive",
  "roleInstancesUrl" : "http://ip-172-31-8-254.ap-southeast-2.compute.internal:7180/cmf/serviceRedirect/hive/instances",
  "serviceState" : "STARTING",
  "healthSummary" : "DISABLED",
  "healthChecks" : [ {
    "name" : "HIVE_HIVEMETASTORES_HEALTHY",
    "summary" : "DISABLED",
    "suppressed" : false
  }, {
    "name" : "HIVE_HIVESERVER2S_HEALTHY",
    "summary" : "DISABLED",
    "suppressed" : false
  } ],
  "configStalenessStatus" : "FRESH",
  "clientConfigStalenessStatus" : "FRESH",
  "maintenanceMode" : false,
  "maintenanceOwners" : [ ],
  "displayName" : "Hive",
  "entityStatus" : "STARTING"
}[root@ip-172-31-5-197 ~]# curl -X  GET  -u paulcompton:cloudera 'http://ec2-54-206-125-242.ap-southeast-2.compute.amazonaws.com:7180/api/v12/clusters/paulcompton/services/hve'
{
  "name" : "hive",
  "type" : "HIVE",
  "clusterRef" : {
    "clusterName" : "cluster"
  },
  "serviceUrl" : "http://ip-172-31-8-254.ap-southeast-2.compute.internal:7180/cmf/serviceRedirect/hive",
  "roleInstancesUrl" : "http://ip-172-31-8-254.ap-southeast-2.compute.internal:7180/cmf/serviceRedirect/hive/instances",
  "serviceState" : "STARTED",
  "healthSummary" : "GOOD",
  "healthChecks" : [ {
    "name" : "HIVE_HIVEMETASTORES_HEALTHY",
    "summary" : "GOOD",
    "suppressed" : false
  }, {
    "name" : "HIVE_HIVESERVER2S_HEALTHY",
    "summary" : "GOOD",
    "suppressed" : false
  } ],
  "configStalenessStatus" : "FRESH",
  "clientConfigStalenessStatus" : "FRESH",
  "maintenanceMode" : false,
  "maintenanceOwners" : [ ],
  "displayName" : "Hive",
  "entityStatus" : "GOOD_HEALTH"
  
  
  ```