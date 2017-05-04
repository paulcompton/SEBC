

#Cloud Provider - AWS

#HOSTS
```
172.31.1.226 manager.paulcompton manager manager ip-172-31-1-226.ap-southeast-2.compute.internal
172.31.10.6 node1.paulcompton node1 worker1 ip-172-31-10-6.ap-southeast-2.compute.internal
172.31.3.244 node2.paulcompton node2 worker2 ip-172-31-3-244.ap-southeast-2.compute.internal
172.31.3.150 node3.paulcompton node3 worker3 ip-172-31-3-150.ap-southeast-2.compute.internal
172.31.13.234 node4.paulcompton node4 worker4 ip-172-31-13-234.ap-southeast-2.compute.internal
```

#LINUX VERSION
```
RHEL 7.2
Linux version 3.10.0-327.36.3.el7.x86_64 (mockbuild@x86-037.build.eng.bos.redhat.com) (gcc version 4.8.5 20150623 (Red Hat 4.8.5-4) (GCC) ) #1 SMP Thu Oct 20 04:56:07 EDT 2016
```

# Disk Space
```
[root@ip-172-31-1-226 ~]# df -H
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda2       33G  1.4G   31G   5% /
devtmpfs        7.8G     0  7.8G   0% /dev
tmpfs           7.7G     0  7.7G   0% /dev/shm
tmpfs           7.7G   18M  7.7G   1% /run
tmpfs           7.7G     0  7.7G   0% /sys/fs/cgroup
tmpfs           1.6G     0  1.6G   0% /run/user/1000

[root@ip-172-31-10-6 ~]# df -H
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda2       33G  1.4G   31G   5% /
devtmpfs        7.8G     0  7.8G   0% /dev
tmpfs           7.7G     0  7.7G   0% /dev/shm
tmpfs           7.7G   26M  7.7G   1% /run
tmpfs           7.7G     0  7.7G   0% /sys/fs/cgroup
tmpfs           1.6G     0  1.6G   0% /run/user/1000

[ec2-user@ip-172-31-3-244 ~]$ df -H
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda2       33G  1.4G   31G   5% /
devtmpfs        7.8G     0  7.8G   0% /dev
tmpfs           7.7G     0  7.7G   0% /dev/shm
tmpfs           7.7G   26M  7.7G   1% /run
tmpfs           7.7G     0  7.7G   0% /sys/fs/cgroup
tmpfs           1.6G     0  1.6G   0% /run/user/1000

[ec2-user@ip-172-31-3-150 ~]$ df -H
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda2       33G  1.4G   31G   5% /
devtmpfs        7.8G     0  7.8G   0% /dev
tmpfs           7.7G     0  7.7G   0% /dev/shm
tmpfs           7.7G   18M  7.7G   1% /run
tmpfs           7.7G     0  7.7G   0% /sys/fs/cgroup
tmpfs           1.6G     0  1.6G   0% /run/user/1000

[ec2-user@ip-172-31-13-234 ~]$ df -H
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda2       33G  1.4G   31G   5% /
devtmpfs        7.8G     0  7.8G   0% /dev
tmpfs           7.7G     0  7.7G   0% /dev/shm
tmpfs           7.7G   18M  7.7G   1% /run
tmpfs           7.7G     0  7.7G   0% /sys/fs/cgroup
tmpfs           1.6G     0  1.6G   0% /run/user/1000

``` 

#REPO LIST
```
[root@ip-172-31-1-226 ~]# yum repolist enabled
Loaded plugins: amazon-id, rhui-lb, search-disabled-repos
repo id                                           repo name                                                       status
!rhui-REGION-client-config-server-7/x86_64        Red Hat Update Infrastructure 2.0 Client Configuration Server 7      6
!rhui-REGION-rhel-server-releases/7Server/x86_64  Red Hat Enterprise Linux Server 7 (RPMs)                        14,277
!rhui-REGION-rhel-server-rh-common/7Server/x86_64 Red Hat Enterprise Linux Server 7 RH Common (RPMs)                 228
repolist: 14,511
[root@ip-172-31-1-226 ~]# 
```

#USERS
```
cate:x:2300:2300::/home/cate:/bin/bash
jemaine:x:2900:2900::/home/jemaine:/bin/bash

```


#GROUPS
```
aussies:x:1001:cate
kiwis:x:2301:jemaine

```

