```
#CREATE SNAPSHOT DIR
 
 hadoop fs -mkdir /precious
 
# ENABLE SNAPSHOTS
 hdfs dfsadmin -allowSnapshot /precious
 
# CREATE SNAPSHOT
 hdfs dfs -createSnapshot /precious sebc-hdfs-test
 
#TRY TO DELETE THE FOLDER
 hadoop fs -rm -r -f /precious
 rm: Failed to move to trash: hdfs://ip-172-31-1-73.ap-southeast-2.compute.internal:8020/precious: The directory /precious cannot be deleted since /precious is snapshottable and already has snapshots
 
# DELETE THE FILE
 hadoop fs -rm -r -f /precious/SEBC.zip
 17/05/02 06:24:16 INFO fs.TrashPolicyDefault: Moved: 'hdfs://ip-172-31-1-73.ap-southeast-2.compute.internal:8020/precious/SEBC.zip' to trash at: hdfs://ip-172-31-1-73.ap-southeast-2.compute.internal:8020/user/hdfs/.Trash/Current/precious/SEBC.zip
 
# RESTORE THE FILE
 hdfs dfs -ls /precious/.snapshot
 
 hdfs dfs -ls /precious/.snapshot/sebc-hdfs-test
 
 hdfs dfs -cp -ptopax /precious/.snapshot/sebc-hdfs-test/SEBC.zip /precious
 ```