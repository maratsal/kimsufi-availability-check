#!/bin/bash
LOCATION=$(curl -s "https://www.ovh.com/engine/api/dedicated/server/availabilities?country=ca" | jq -r '.[] | select(.hardware=="1804sk12" and .region=="northAmerica") | .datacenters[]| select(.availability != "unavailable")|.datacenter')

[[ $LOCATION ]] && sendmail -t "YOUR@E-MAIL.COM" <<EOF
From: SENDER@E-MAIL.COM
Subject: Kimsufi KS-1 server is available
Hi My Dear Friend,

KS-1 kimsufi server is available in following datacenter now.
$LOCATION

Hurry up and make your order https://www.kimsufi.com/ca/en/order/kimsufi.xml?reference=1804sk12

Sincerely.
Your nice script.
EOF
