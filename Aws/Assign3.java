//Adithya Chandrashekar (1000990558)
//Kailash Havildar (1000996588)

//this code is referred from http://www.youtube.com/watch?v=E30_-pQGQXs and the author is Stirling Crow 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.Random;
import java.sql.*;


public class Assign3 {
	
		public static void main(String[] args) {
			//establishing  connection between mysql and eclipse
			try{	
				Class.forName("com.mysql.jdbc.Driver");
				// providing the details of the rds for connection
				String url="jdbc:mysql://assgn.cfpm0yl0xmm0.us-west-2.rds.amazonaws.com:3306/innodb?user=root&password=qwertyuiop";
				Connection conn = DriverManager.getConnection(url);
				System.out.println ("Database connection established");
				// defining statements as null to pass the queries.
				java.sql.Statement stmt=null;
				java.sql.Statement stmt2=null;
				//initializing result set to execute queries
				ResultSet rs=null;
				ResultSet rs2=null;
				// passing queries and creating statements
					String str="Select count(univid), state from university group by university.state order by count(univid) desc";
					stmt=conn.createStatement();
					String str2="Select average, areaname from income order by average desc";
					stmt2=conn.createStatement();
					rs=stmt.executeQuery(str);
					rs2=stmt2.executeQuery(str2);
					// 
					while(rs.next()&& rs2.next()){ 
						 String count = rs.getString("count(univid)");
						 String state = rs.getString("state");
						 String average = rs2.getString("average");
						 String areaname = rs2.getString("areaname");
						 System.out.println(count+"\t\t"+ state+"\t\t"+average+"\t\t"+areaname+"\t\t");
					}
					
				//closing the result sets and connnection 		
											
				rs.close();
				rs2.close();
				conn.close();
			}
			catch (Exception e){
				System.out.println("Error Occurred");
				System.out.println("Error:" + e);
			}

		}
		

	
}
		
	
/* References:
1.	http://boto.readthedocs.org/en/latest/s3_tut.html
2.	http://aws.amazon.com/
3.	https://www.google.com/
4.	http://www.mysql.com/
5.	http://dev.mysql.com/downloads/connector/j/
6.	http://dev.mysql.com/doc/connector-j/en/connector-j-usagenotes-connect-drivermanager.html
7.	http://www.youtube.com/watch?v=UQADy_y14B4
8.	http://stackoverflow.com/questions/14127529/mysql-import-data-from-csv-using-load-data-infile
9.	http://www.youtube.com/watch?v=jSJU0Yl-e0E
*/



	



