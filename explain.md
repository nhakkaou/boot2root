# Boot2Root

After we start the iso image we found this message =>

```
_There will be no visible IP address, and there’s a reason why..._

```

To get the Ip address we used "nmap" cause we used bridge, For a "Bridged" virtual network adapter, the host shares its physical adapters, i.e. the VM basically connects to the network like any other physical system. so we got my ip by ifconfig and then we scaned by netmask /24.

> nmap -A 10.12.100.1/24

After the scan finished, we got this result 

```
Starting Nmap 7.92 ( https://nmap.org ) at 2022-05-22 18:24 +01
Nmap scan report for 10.12.100.74
Host is up (0.0011s latency).
Not shown: 994 closed tcp ports (conn-refused)
PORT    STATE SERVICE  VERSION
21/tcp  open  ftp      vsftpd 2.0.8 or later
|_ftp-anon: got code 500 "OOPS: vsftpd: refusing to run with writable root inside chroot()".
22/tcp  open  ssh      OpenSSH 5.9p1 Debian 5ubuntu1.7 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey:
|   1024 07:bf:02:20:f0:8a:c8:48:1e:fc:41:ae:a4:46:fa:25 (DSA)
|   2048 26:dd:80:a3:df:c4:4b:53:1e:53:42:46:ef:6e:30:b2 (RSA)
|_  256 cf:c3:8c:31:d7:47:7c:84:e2:d2:16:31:b2:8e:63:a7 (ECDSA)
80/tcp  open  http     Apache httpd 2.2.22 ((Ubuntu))
|_http-title: Hack me if you can
|_http-server-header: Apache/2.2.22 (Ubuntu)
143/tcp open  imap     Dovecot imapd
|_imap-capabilities: STARTTLS IMAP4rev1 capabilities LOGIN-REFERRALS listed have LITERAL+ post-login OK ID Pre-login SASL-IR more LOGINDISABLEDA0001 ENABLE IDLE
|_ssl-date: 2022-05-22T17:24:32+00:00; 0s from scanner time.
| ssl-cert: Subject: commonName=localhost/organizationName=Dovecot mail server
| Not valid before: 2015-10-08T20:57:30
|_Not valid after:  2025-10-07T20:57:30
443/tcp open  ssl/http Apache httpd 2.2.22
|_ssl-date: 2022-05-22T17:24:32+00:00; 0s from scanner time.
| ssl-cert: Subject: commonName=BornToSec
| Not valid before: 2015-10-08T00:19:46
|_Not valid after:  2025-10-05T00:19:46
|_http-title: 404 Not Found
|_http-server-header: Apache/2.2.22 (Ubuntu)
993/tcp open  ssl/imap Dovecot imapd
|_ssl-date: 2022-05-22T17:24:32+00:00; 0s from scanner time.
|_imap-capabilities: LOGIN-REFERRALS IMAP4rev1 AUTH=PLAINA0001 listed Pre-login LITERAL+ have OK ID post-login capabilities more SASL-IR ENABLE IDLE
| ssl-cert: Subject: commonName=localhost/organizationName=Dovecot mail server
| Not valid before: 2015-10-08T20:57:30
|_Not valid after:  2025-10-07T20:57:30
Service Info: Host: 127.0.1.1; OS: Linux; CPE: cpe:/o:linux:linux_kernel

```
