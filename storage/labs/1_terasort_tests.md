

#PERFORMANCE TEST

useradd paulcompton
passwd paulcompton

#SETUP USER DIRECTORY
su - hdfs
hadoop fs -mkdir /user/paulcompton
hadoop fs -chown paulcompton /user/paulcompton
hadoop fs -chmod 775 /user/paulcompton

#CREATE TESTING FILE
su - paulcompton
time hadoop jar hadoop-examples.jar teragen -D dfs.block.size=33554432 -D mapred.reduce.tasks=4  100000000 /user/paulcompton/terasort-input 
real	3m9.229s
user	0m6.020s
sys	0m0.295s

#RUN THE SORT JOB
time hadoop jar hadoop-examples.jar terasort /user/paulcompton/terasort-input /user/paulcompton/terasort-output
real	7m19.112s
user	0m9.261s
sys	0m0.418s



