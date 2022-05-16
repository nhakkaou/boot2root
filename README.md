# Boot2Root

When we start the iso image we found this message

_There will be no visible IP address, and there’s a reason why..._

To get the Ip address i used "nmap" cause i used bridge, For a "Bridged" virtual network adapter, the host shares its physical adapters, i.e. the VM basically connects to the network like any other physical system. so i got my ip by ifconfig and then i scaned by netmask /24.

> nmap -A 10.12.100.0/24

I found this result and i got the Ip

```
80/tcp  open  http     Apache httpd 2.2.22 ((Ubuntu))
|_http-server-header: Apache/2.2.22 (Ubuntu)
|_http-title: Hack me if you can
```
