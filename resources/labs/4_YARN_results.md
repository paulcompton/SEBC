```
#slowest 
Testing loop started on Tue May 2 22:36:29 EDT 2017
i = 16 j = 16 k = 512

real	1m26.151s
user	1m6.755s
sys	0m1.824s

real	6m14.423s
user	5m56.232s
sys	0m30.226s
Warning: fs.defaultFS is not set when running "rm" command.
Deleted hdfs://ip-172-31-5-110.ap-southeast-2.compute.internal/results/tg-10GB-16-16-512
Warning: fs.defaultFS is not set when running "rm" command.
Deleted hdfs://ip-172-31-5-110.ap-southeast-2.compute.internal/results/ts-10GB-16-16-512
i = 16 j = 16 k = 1024

real	1m25.061s
user	1m4.138s
sys	0m1.518s

real	6m5.554s
user	5m47.291s
sys	0m30.334s
Warning: fs.defaultFS is not set when running "rm" command.
Deleted hdfs://ip-172-31-5-110.ap-southeast-2.compute.internal/results/tg-10GB-16-16-1024
Warning: fs.defaultFS is not set when running "rm" command.
Deleted hdfs://ip-172-31-5-110.ap-southeast-2.compute.internal/results/ts-10GB-16-16-1024
Testing loop ended on Tue May 2 22:51:49 EDT 2017


#fastest
Testing loop started on Tue May 2 23:43:51 EDT 2017
i = 8 j = 2 k = 512

real	1m38.035s
user	1m6.295s
sys	0m1.764s

real	5m11.511s
user	5m17.226s
sys	0m30.862s
Warning: fs.defaultFS is not set when running "rm" command.
Deleted hdfs://ip-172-31-5-110.ap-southeast-2.compute.internal/results/tg-10GB-8-2-512
Warning: fs.defaultFS is not set when running "rm" command.
Deleted hdfs://ip-172-31-5-110.ap-southeast-2.compute.internal/results/ts-10GB-8-2-512
i = 8 j = 2 k = 1024

real	0m5.063s
user	0m3.584s
sys	0m0.191s

real	0m2.419s
user	0m3.542s
sys	0m0.194s
Warning: fs.defaultFS is not set when running "rm" command.
Deleted hdfs://ip-172-31-5-110.ap-southeast-2.compute.internal/results/tg-10GB-8-2-1024
Warning: fs.defaultFS is not set when running "rm" command.
rm: `hdfs://ip-172-31-5-110.ap-southeast-2.compute.internal/results/ts-10GB-8-2-1024': No such file or directory
Testing loop ended on Tue May 2 23:50:58 EDT 2017
```