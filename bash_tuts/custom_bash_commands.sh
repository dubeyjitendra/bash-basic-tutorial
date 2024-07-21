#!/bin/bash

# The following netstat command would show us how many TCP connections on port 80 and 443 we currently have:

netstat -plant | grep '80\|443' | grep -v LISTEN | wc -l

# All we need to do in this case is to run the following command:

alias conn="netstat -plant | grep '80\|443' | grep -v LISTEN | wc -l"

# That way we are creating an alias called conn which would essentially be a 'shortcut' for our long netstat command. Now if you run just conn:

conn

########################## Making the change persistent


# By default on Ubuntu this would be the ~/.bashrc ﬁle 

nano ~/.bashrc


########  Check CPU and DIsk

Here's what the end result would look like:
#!/bin/bash
##
# BASH script that checks:
#
- Memory usage
#
- CPU load
#
- Number of TCP connections
#
- Kernel version
##
server_name=$(hostname)
function memory_check() {
echo ""
    echo "Memory usage on ${server_name} is: "
free -h
echo ""
}
function cpu_check() {
echo ""
echo "CPU load on ${server_name} is: "
echo ""
uptime
echo ""
}
function tcp_check() {
echo ""
    echo "TCP connections on ${server_name}: "
echo ""
cat /proc/net/tcp | wc -l
echo ""
}


function kernel_check() {
echo ""
echo "Kernel version on ${server_name} is: "
echo ""
uname -r
echo ""
}
function all_checks() {
memory_check
cpu_check
tcp_check
kernel_check
}

all_checks


