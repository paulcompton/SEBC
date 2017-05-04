```
# CREATING THE TEST FILE
su - hdfs
cd /opt/cloudera/parcels/CDH/jars/
hadoop fs -chmod 775 /user
hadoop jar hadoop-examples.jar teragen 5000000 /user/paulcompton/paulcompton


Not able to conect to the nodes across in another AWS VPC account as they use the internal ip / DNS.  This affects both ways of rreplicating.

Need to use webhdfs / httpfs to achieve this:
Tested webhdfs but that did not work.
Tried to use HTTPfs for replication but is did not change the error.

```