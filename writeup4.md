# Boot2Root

Users can gain privileges on exploiting an incorrect handling of copy-on-write (COW)
That cve called <b>Dirtycow</b> known as <b>CVE-2016-5195</b>
More detail about the cve [here](https://nvd.nist.gov/vuln/detail/CVE-2016-5195)

## Exploit

There's some tools to test the actual version of kernel if it's exploitable by that cve 
like [linux-exploit-suggester](https://github.com/mzet-/linux-exploit-suggester/blob/master/linux-exploit-suggester.sh)

Using `uname -a` we found that our kernel version is vulnerable to that exploit

We gonna use this [exploit](https://www.exploit-db.com/raw/40839), we make a file dirty.c contains the c code on the exploit

We compile our code to have our binary:
![compile1](screen/comp1.png)

We run our binary and we will add a new user firefart :
![comp2](screen/comp2.png)

We enter a password for the new user ! A file /tmp/passwd.bak will be generated and the /etc/passwd will be placed by that file
![comp3](screen/comp3.png)

Know We can connect to firefar " `su firefart` " and we will be root on the machine:
![root](screen/root.png)

