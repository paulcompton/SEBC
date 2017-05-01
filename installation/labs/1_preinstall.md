On All Hosts


Swappiness
Check
cat /proc/sys/vm/swappiness

Set
echo 1 > /proc/sys/vm/swappiness
echo "vm.swapiness = 1" >> /etc/sysctl.conf

Volume information 
df -H

Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda2       33G  972M   32G   4% /
devtmpfs        7.8G     0  7.8G   0% /dev
tmpfs           7.7G     0  7.7G   0% /dev/shm
tmpfs           7.7G   18M  7.7G   1% /run
tmpfs           7.7G     0  7.7G   0% /sys/fs/cgroup
tmpfs           1.6G     0  1.6G   0% /run/user/1000
tmpfs           1.6G     0  1.6G   0% /run/user/0

Hugepages

check
cat /proc/sys/vm/nr_hugepages 

set - runtime
echo never > /sys/kernel/mm/transparent_hugepage/defrag
echo never > /sys/kernel/mm/transparent_hugepage/enabled

persistant
vi /etc/init.d/disable-transparent-hugepages

file contents below
```bash
#!/bin/sh
### BEGIN INIT INFO
# Provides:          disable-transparent-hugepages
# Required-Start:    $local_fs
# Required-Stop:
# X-Start-Before:    mongod mongodb-mms-automation-agent
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Disable Linux transparent huge pages
# Description:       Disable Linux transparent huge pages, to improve
#                    database performance.
### END INIT INFO

case $1 in
  start)
    if [ -d /sys/kernel/mm/transparent_hugepage ]; then
      thp_path=/sys/kernel/mm/transparent_hugepage
    elif [ -d /sys/kernel/mm/redhat_transparent_hugepage ]; then
      thp_path=/sys/kernel/mm/redhat_transparent_hugepage
    else
      return 0
    fi

    echo 'never' > ${thp_path}/enabled
    echo 'never' > ${thp_path}/defrag

    unset thp_path
    ;;
esac
```

end of file contents

sudo chmod 755 /etc/init.d/disable-transparent-hugepages
sudo chkconfig --add disable-transparent-hugepages

Show network Config

[root@ip-172-31-5-110 ~]# ifconfig
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 9001
        inet 172.31.5.110  netmask 255.255.240.0  broadcast 172.31.15.255
        inet6 fe80::c9:27ff:feca:f11d  prefixlen 64  scopeid 0x20<link>
        ether 02:c9:27:ca:f1:1d  txqueuelen 1000  (Ethernet)
        RX packets 684  bytes 72733 (71.0 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 703  bytes 86571 (84.5 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 0  (Local Loopback)
        RX packets 4  bytes 340 (340.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 4  bytes 340 (340.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
		
Show correct forward and reverse host lookups
yum install bind-utils

TEST DNS
nslookup ip-172-31-8-254.ap-southeast-2.compute.internal
nslookup ip-172-31-5-197.ap-southeast-2.compute.internal
nslookup ip-172-31-9-1.ap-southeast-2.compute.internal
nslookup ip-172-31-1-73.ap-southeast-2.compute.internal
nslookup ip-172-31-5-110.ap-southeast-2.compute.internal

[root@ip-172-31-8-254 ~]# nslookup ip-172-31-8-254.ap-southeast-2.compute.internal
Server:		172.31.0.2
Address:	172.31.0.2#53

Non-authoritative answer:
Name:	ip-172-31-8-254.ap-southeast-2.compute.internal
Address: 172.31.8.254

[root@ip-172-31-8-254 ~]# nslookup ip-172-31-5-197.ap-southeast-2.compute.internal
Server:		172.31.0.2
Address:	172.31.0.2#53

Non-authoritative answer:
Name:	ip-172-31-5-197.ap-southeast-2.compute.internal
Address: 172.31.5.197

[root@ip-172-31-8-254 ~]# nslookup ip-172-31-9-1.ap-southeast-2.compute.internal
Server:		172.31.0.2
Address:	172.31.0.2#53

Non-authoritative answer:
Name:	ip-172-31-9-1.ap-southeast-2.compute.internal
Address: 172.31.9.1

[root@ip-172-31-8-254 ~]# nslookup ip-172-31-1-73.ap-southeast-2.compute.internal
Server:		172.31.0.2
Address:	172.31.0.2#53

Non-authoritative answer:
Name:	ip-172-31-1-73.ap-southeast-2.compute.internal
Address: 172.31.1.73

[root@ip-172-31-8-254 ~]# nslookup ip-172-31-5-110.ap-southeast-2.compute.internal
Server:		172.31.0.2
Address:	172.31.0.2#53

Non-authoritative answer:
Name:	ip-172-31-5-110.ap-southeast-2.compute.internal
Address: 172.31.5.110

nslookup 172.31.8.254
nslookup 172.31.5.197
nslookup 172.31.9.1
nslookup 172.31.1.73
nslookup 172.31.5.110

results 

[root@ip-172-31-8-254 ~]# nslookup 172.31.5.110
Server:		172.31.0.2
Address:	172.31.0.2#53

Non-authoritative answer:
110.5.31.172.in-addr.arpa	name = ip-172-31-5-110.ap-southeast-2.compute.internal.

Authoritative answers can be found from:

Check nscd service 

yum -y install nscd
service nscd start
chkconfig nscd on

Note: Forwarding request to 'systemctl enable nscd.service'.
Created symlink from /etc/systemd/system/multi-user.target.wants/nscd.service to /usr/lib/systemd/system/nscd.service.
Created symlink from /etc/systemd/system/sockets.target.wants/nscd.socket to /usr/lib/systemd/system/nscd.socket.

check ntpd serivce

yum -y install ntp
service ntpd start
chkconfig ntpd on

Note: Forwarding request to 'systemctl enable ntpd.service'.
Created symlink from /etc/systemd/system/multi-user.target.wants/ntpd.service to /usr/lib/systemd/system/ntpd.service.
