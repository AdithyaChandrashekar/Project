#Adithya Chandrashekar (1000990558)
#Kailash Havildar (1000996588)

import boto
from boto.s3.connection import S3Connection
import timeit

# providing access key and secret key generated in my AWS account
access_key = 'AKIAI4NXMQ76CEBRJ3JA'
secret_key = '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'

# connecting to AWS S3 web service
conn = boto.connect_s3(aws_access_key_id = access_key, aws_secret_access_key = secret_key)
print ("done")

#Creating Bucket
bucket = conn.create_bucket('assignment3-bucket')
print ("bucket created")

#creating folders inside the buckets
key = bucket.new_key('assignment-3')
key1 = bucket.new_key('assign3a')

#uploading the below files to the S3 and calculating time
startTime = timeit.timeit()
key.set_contents_from_filename("C:/Users/Adithya/Downloads/hd2013.csv")
key1.set_contents_from_filename("C:/Users/Adithya/Downloads/us-pci.xls")
endTime = timeit.timeit()

print ("Start time: ",startTime)
print (endTime - startTime)
print ("End time:",endTime)

'''
1.	http://boto.readthedocs.org/en/latest/s3_tut.html
2.	http://aws.amazon.com/
3.	https://www.google.com/
4.	http://www.mysql.com/
5.	http://dev.mysql.com/downloads/connector/j/
6.	http://dev.mysql.com/doc/connector-j/en/connector-j-usagenotes-connect-drivermanager.html
7.	http://www.youtube.com/watch?v=UQADy_y14B4
8.	http://stackoverflow.com/questions/14127529/mysql-import-data-from-csv-using-load-data-infile
9.	http://www.youtube.com/watch?v=jSJU0Yl-e0E
'''
                               
