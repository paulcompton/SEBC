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
mfernest: As mentioned in class, the summary above defeats the purpose of showing what you tried and what results you got. If you don't have a proper journal of how things didn't work, you're left with learning that whatever you tried didn't work.
