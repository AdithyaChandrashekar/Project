Aditya Chandrashekar - 1000990558
Kailash Havildar - 1000996588

						PROJECT 4

Uploading to NoSQL Database-DynamoDB:


1.  Login to the AWS EC2 instance using the below command from your terminal
	ssh -i adi.pem ubuntu@54.69.91.79
	
2. We upload the files on the EC2 instance from the local host using the command
	scp -i adi.pem /users/kailashhavildar/Desktop/uv.csv ubuntu@54.69.91.79:
	scp -i adi.pem /users/kailashhavildar/Desktop/assig4.csv ubuntu@54.69.91.79:
  Both these files will be present in the home directory of the EC2 instance.
	
3. Execute the python code from the EC2 instance and the values of the attributes will be filled in the Dynamodb.

Machine Learning using the WEKA tool:

1. Download the Weka tool from the website 
2. Open a new project on eclipse and configure source path to include the jar files of the Weka tool.

References:
1. http://www.cs.waikato.ac.nz/ml/weka/downloading.html
2. http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AccessingInstancesLinux.html
3. http://stackoverflow.com/questions/11388014/using-scp-to-copy-a-file-to-amazon-ec2-instance
4. http://boto.readthedocs.org/en/latest/ref/dynamodb.html
5. http://slavnik.fe.uni-lj.si/markot/csv2arff/csv2arff.php
6. http://weka.wikispaces.com/Use+WEKA+in+your+Java+code
7. http://bl.ocks.org/mbostock/3887118
8. http://tomcat.apache.org/download-80.cgi

 
