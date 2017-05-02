# CREATING THE TEST FILE
su - hdfs
cd /opt/cloudera/parcels/CDH/jars/
hadoop fs -chmod 775 /user
hadoop jar hadoop-examples.jar teragen 5000000 /user/paulcompton/paulcompton


Not able to conect to the nodes across in another AWS VPC account as they use the internal ip / DNS

Need to use webhdfs / httpfs to achieve this

Start HTTPfs

