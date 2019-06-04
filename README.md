# kimsufi-availability-check

Simple bash script to check availability of KS-1 kimsufi server in North America

To be able to run the script you need `curl`, `sendmail` and `jq` installed on the server.

Scripts queries API for different offerings availability. Then with `jq` it narrows it down to specific KS-1 in North America.

If affering available, then it sends e-mail to specified address.
