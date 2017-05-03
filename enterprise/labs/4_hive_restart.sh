4_API_upgrade_calls.md

 curl -X  GET  -u paulcompton:cloudera 'http://ec2-54-206-125-242.ap-southeast-2.compute.amazonaws.co:7180/api/version'
v16


 curl -X  GET  -u paulcompton:cloudera 'http://ec2-54-206-125-242.ap-southeast-2.compute.amazonaws.com:7180/api/v16/cm/version'

 {
   "version" : "5.11.0",
   "buildUser" : "jenkins",
   "buildTimestamp" : "20170412-1255",
   "gitHash" : "70cb1442626406432a6e7af5bdf206a384ca3f98",
   "snapshot" : false
}

curl -X  GET  -u paulcompton:cloudera 'http://ec2-54-206-125-242.ap-southeast-2.compute.amazonaws.com:7180/api/v16/users'

{
  "items" : [ {
    "name" : "admin",
    "roles" : [ "ROLE_LIMITED" ]
  }, {
    "name" : "minotaur",
    "roles" : [ "ROLE_CONFIGURATOR" ]
  }, {
    "name" : "paulcompton",
    "roles" : [ "ROLE_ADMIN" ]
  } ]
}


curl -X  GET  -u paulcompton:cloudera 'http://ec2-54-206-125-242.ap-southeast-2.compute.amazonaws.com:7180/api/v16/cm/scmDbInfo'

{
  "scmDbType" : "MYSQL",
  "embeddedDbUsed" : false
}