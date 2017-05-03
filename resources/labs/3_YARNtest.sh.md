scp /Users/paulcompton/.ssh/servian-consultancy-syd_201603.pem tools/*.* ec2-user@ec2-54-206-125-242.ap-southeast-2.compute.amazonaws.com:/home/ec2-user/


# SCRIPT

#!/bin/sh
# Confirm the path values given below correspond to your installation
echo mappers =  $1
echo reducers = $2


MR=/opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce
HADOOP=/opt/cloudera/parcels/CDH/bin


# Mark start of the loop
echo Testing loop started on `date`

# Mapper containers
for i in $1
do
   # Reducer containers
   for j in $2
   do
      # Container memory
      for k in 512 1024
      do
         # Set mapper JVM heap
         MAP_MB=`echo "($k*0.8)/1" | bc`

         # Set reducer JVM heap
         RED_MB=`echo "($k*0.8)/1" | bc`

        echo i = $i    j = $j k = $k

        time ${HADOOP}/hadoop jar ${MR}/hadoop-examples.jar teragen \
                     -Dmapreduce.job.maps=$i \
                     -Dmapreduce.map.memory.mb=$k \
                     -Dmapreduce.map.java.opts.max.heap=$MAP_MB \
                     51200000 hdfs://ip-172-31-5-110.ap-southeast-2.compute.internal/results/tg-10GB-${i}-${j}-${k} 1>tera_${i}_${j}_${k}.out 2>tera_${i}_${j}_${k}.err       

       time ${HADOOP}/hadoop jar $MR/hadoop-examples.jar terasort \
                     -Dmapreduce.job.maps=$i \
                     -Dmapreduce.job.reduces=$j \
                     -Dmapreduce.map.memory.mb=$k \
                     -Dmapreduce.map.java.opts.max.heap=$MAP_MB \
                     -Dmapreduce.reduce.memory.mb=$k \
                     -Dmapreduce.reduce.java.opts.max.heap=$RED_MB \
                     hdfs://ip-172-31-5-110.ap-southeast-2.compute.internal/results/tg-10GB-${i}-${j}-${k}  \
                     hdfs://ip-172-31-5-110.ap-southeast-2.compute.internal/results/ts-10GB-${i}-${j}-${k} 1>>tera_${i}_${j}_${k}.out 2>>tera_${i}_${j}_${k}.err              

        $HADOOP/hdfs dfs -rm -r -skipTrash hdfs://ip-172-31-5-110.ap-southeast-2.compute.internal/results/tg-10GB-${i}-${j}-${k}
        $HADOOP/hdfs dfs -rm -r -skipTrash hdfs://ip-172-31-5-110.ap-southeast-2.compute.internal/results/ts-10GB-${i}-${j}-${k}
      done
   done
done

echo Testing loop ended on `date`
