/* Adithya Chandrashekar [ 1000990558]
   Kailash Havildar[1000996588] */



#!/bin/bash
Start=$(date +%s)
echo 'uploading now at'
echo $Start
gsutil cp //home/adi/Desktop/100k.csv gs://assignment5-kaiadi/100k.csv 
End=$(date +%s)
echo 'uploading ends at'
echo $End
echo 'Time taken'
echo $(expr $End - $Start)

/* References: 
http://www.cyberciti.biz/faq/shell-script-to-get-the-time-difference/
http://stackoverflow.com/questions/8903239/how-to-calculate-time-difference-in-bash-script
https://cloud.google.com/storage/docs/gsutil/commands/cp
https://cloud.google.com/storage/docs/gsutil
https://cloud.google.com/storage/docs/gettingstarted-gsutil
http://www.youtube.com/watch?v=_kQXgjIfLgo
*/
