#! /bin/bash
function do_something {
   curl 'https://discordapp.com/api/v6/users/@me/settings' -X PATCH -H 'authorization: REPLACE.YOURTOKENWITH.THIS' -H 'content-type: application/json' --data-binary '{"custom_status":{"text":"'$(date +"%T")'"}}'
}
MAX=999999999999999999999999
for (( i=0; i<MAX; i++ )) ; {
	do_something $(date +"%T")
	#sleep 60
}