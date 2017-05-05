```
[cate@ip-172-31-10-6 jars]$ time hadoop jar hadoop-examples.jar teragen -D dfs.block.size=16777216 -D mapred.reduce.tasks=4 -D mapreduce.map.memory.mb=512 65536000 /user/cate/tgen
17/05/04 21:44:50 INFO client.RMProxy: Connecting to ResourceManager at manager.paulcompton/172.31.1.226:8032
17/05/04 21:44:51 INFO terasort.TeraGen: Generating 65536000 using 2
17/05/04 21:44:51 INFO mapreduce.JobSubmitter: number of splits:2
17/05/04 21:44:51 INFO Configuration.deprecation: dfs.block.size is deprecated. Instead, use dfs.blocksize
17/05/04 21:44:51 INFO Configuration.deprecation: mapred.reduce.tasks is deprecated. Instead, use mapreduce.job.reduces
17/05/04 21:44:51 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1493946938489_0001
17/05/04 21:44:52 INFO impl.YarnClientImpl: Submitted application application_1493946938489_0001
17/05/04 21:44:52 INFO mapreduce.Job: The url to track the job: http://manager.paulcompton:8088/proxy/application_1493946938489_0001/
17/05/04 21:44:52 INFO mapreduce.Job: Running job: job_1493946938489_0001
17/05/04 21:44:59 INFO mapreduce.Job: Job job_1493946938489_0001 running in uber mode : false
17/05/04 21:44:59 INFO mapreduce.Job:  map 0% reduce 0%
17/05/04 21:45:18 INFO mapreduce.Job:  map 21% reduce 0%
17/05/04 21:45:24 INFO mapreduce.Job:  map 26% reduce 0%
17/05/04 21:45:36 INFO mapreduce.Job:  map 37% reduce 0%
17/05/04 21:45:42 INFO mapreduce.Job:  map 44% reduce 0%
17/05/04 21:45:48 INFO mapreduce.Job:  map 49% reduce 0%
17/05/04 21:45:54 INFO mapreduce.Job:  map 51% reduce 0%
17/05/04 21:46:00 INFO mapreduce.Job:  map 58% reduce 0%
17/05/04 21:46:06 INFO mapreduce.Job:  map 64% reduce 0%
17/05/04 21:46:12 INFO mapreduce.Job:  map 70% reduce 0%
17/05/04 21:46:18 INFO mapreduce.Job:  map 74% reduce 0%
17/05/04 21:46:24 INFO mapreduce.Job:  map 75% reduce 0%
17/05/04 21:46:30 INFO mapreduce.Job:  map 82% reduce 0%
17/05/04 21:46:36 INFO mapreduce.Job:  map 88% reduce 0%
17/05/04 21:46:42 INFO mapreduce.Job:  map 93% reduce 0%
17/05/04 21:46:48 INFO mapreduce.Job:  map 99% reduce 0%
17/05/04 21:46:54 INFO mapreduce.Job:  map 100% reduce 0%
17/05/04 21:46:55 INFO mapreduce.Job: Job job_1493946938489_0001 completed successfully
17/05/04 21:46:56 INFO mapreduce.Job: Counters: 31
	File System Counters
		FILE: Number of bytes read=0
		FILE: Number of bytes written=249064
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=170
		HDFS: Number of bytes written=6553600000
		HDFS: Number of read operations=8
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=4
	Job Counters 
		Launched map tasks=2
		Other local map tasks=2
		Total time spent by all maps in occupied slots (ms)=223294
		Total time spent by all reduces in occupied slots (ms)=0
		Total time spent by all map tasks (ms)=223294
		Total vcore-seconds taken by all map tasks=223294
		Total megabyte-seconds taken by all map tasks=228653056
	Map-Reduce Framework
		Map input records=65536000
		Map output records=65536000
		Input split bytes=170
		Spilled Records=0
		Failed Shuffles=0
		Merged Map outputs=0
		GC time elapsed (ms)=1224
		CPU time spent (ms)=96240
		Physical memory (bytes) snapshot=289595392
		Virtual memory (bytes) snapshot=2255499264
		Total committed heap usage (bytes)=391643136
	org.apache.hadoop.examples.terasort.TeraGen$Counters
		CHECKSUM=140750829423462787
	File Input Format Counters 
		Bytes Read=0
	File Output Format Counters 
		Bytes Written=6553600000
```

```
real	2m7.919s
user	0m6.062s
sys	0m0.291s
```

```
[cate@ip-172-31-10-6 jars]$ hdfs dfs -ls /user/cate/tgen
Found 3 items
-rw-r--r--   3 cate supergroup          0 2017-05-04 21:46 /user/cate/tgen/_SUCCESS
-rw-r--r--   3 cate supergroup 3276800000 2017-05-04 21:46 /user/cate/tgen/part-m-00000
-rw-r--r--   3 cate supergroup 3276800000 2017-05-04 21:46 /user/cate/tgen/part-m-00001
```