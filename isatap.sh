#!/bin/sh
 
EN0_IP=`/sbin/ifconfig en0 | grep inet | grep -v inet6 | awk '{print $2}'` 
EN1_IP=`/sbin/ifconfig en1 | grep inet | grep -v inet6 | awk '{print $2}'` 
 
if [ -n "$EN0_IP" ]; then
LOCAL_IP=$EN0_IP 
else
LOCAL_IP=$EN1_IP 
fi 
echo $LOCAL_IP
 
if [ -n "$LOCAL_IP" ]; then 
/sbin/ifconfig gif0 tunnel $LOCAL_IP isatap.tsinghua.edu.cn
/sbin/ifconfig gif0 inet6 2402:f000:1:1501:200:5efe:$LOCAL_IP prefixlen 64
/sbin/route delete -inet6 default
/sbin/route add -inet6 default 2402:f000:1:1501::1
# /sbin/ifconfig gif0 inet6 2001:da8:200:900e:0:5efe:$LOCAL_IP prefixlen 64
# /sbin/route delete -inet6 default
# /sbin/route add -inet6 default 2001:da8:200:900e::1
fi