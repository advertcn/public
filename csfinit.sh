#!/bin/bash

# CSF config location
CSFL="/etc/csf/csf.conf"

Init_CSF()
{

    echo "Please enter the ports you want to open for system, for example 25,53,80,443"
	read CSFPorts
    if [ -s $CSFL ]
	then 
     # change ports
      sed -i "s/^TCP_IN =.*/TCP_IN = \"$CSFPorts\"/g" $CSFL	 
	 # disable email alerts
	  sed -i 's/^TESTING = "1"$/TESTING = "0"/g' $CSFL
	  sed -i 's/^RESTRICT_SYSLOG = "0"$/RESTRICT_SYSLOG = "3"/g' $CSFL
	  sed -i 's/^ICMP_IN_RATE = "1\/s"$/ICMP_IN_RATE = "0"/g' $CSFL
	  sed -i 's/^LF_PERMBLOCK_ALERT = "1"$/LF_PERMBLOCK_ALERT = "0"/g' $CSFL
	  sed -i 's/^LF_NETBLOCK_ALERT = "1"$/LF_NETBLOCK_ALERT = "0"/g' $CSFL
	  sed -i 's/^LF_EMAIL_ALERT = "1"$/LF_EMAIL_ALERT = "0"/g' $CSFL
	  sed -i 's/^LF_CONSOLE_EMAIL_ALERT = "1"$/LF_CONSOLE_EMAIL_ALERT = "0"/g' $CSFL
	  sed -i 's/^LF_DISTFTP_ALERT = "1"$/LF_DISTFTP_ALERT = "0"/g' $CSFL
	  sed -i 's/^LF_DISTSMTP_ALERT = "1"$/LF_DISTSMTP_ALERT = "0"/g' $CSFL
	  sed -i 's/^LT_EMAIL_ALERT = "1"$/LT_EMAIL_ALERT = "0"/g' $CSFL
	  sed -i 's/^CT_EMAIL_ALERT = "1"$/CT_EMAIL_ALERT = "0"/g' $CSFL
	  sed -i 's/^PT_LIMIT = "60"$/PT_LIMIT = "0"/g' $CSFL
	  sed -i 's/^PT_USERPROC = "10"$/PT_USERPROC = "0"/g' $CSFL
	  sed -i 's/^PT_USERMEM = "512"$/PT_USERMEM = "0"/g' $CSFL
	  sed -i 's/^PT_USERRSS = "256"$/PT_USERRSS = "0"/g' $CSFL
	  sed -i 's/^PT_USERTIME = "1800"$/PT_USERTIME = "0"/g' $CSFL
	  sed -i 's/^PT_USERKILL_ALERT = "1"$/PT_USERKILL_ALERT = "0"/g' $CSFL
	  sed -i 's/^PT_LOAD = "30"$/PT_LOAD = "0"/g' $CSFL
	  sed -i 's/^PS_EMAIL_ALERT = "1"$/PS_EMAIL_ALERT = "0"/g' $CSFL
	  sed -i 's/^CC_LOOKUPS = "1"$/CC_LOOKUPS = "0"/g' $CSFL
	fi
}

Init_CSF


echo "CSF has been installed and initiated !!!"
