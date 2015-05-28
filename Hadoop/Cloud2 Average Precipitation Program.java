//CSE 6331 Cloud Computing 
//Assignment 2
//Adithya Chandrashekar
//1000990558
//Kailash Havildar
//1000996588

import java.io.IOException;
import java.util.Iterator;
//importing all the necessary files.
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.conf.Configured;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapred.FileInputFormat;
import org.apache.hadoop.mapred.FileOutputFormat;
import org.apache.hadoop.mapred.JobClient;
import org.apache.hadoop.mapred.JobConf;
import org.apache.hadoop.mapred.MapReduceBase;
import org.apache.hadoop.mapred.Mapper;
import org.apache.hadoop.mapred.OutputCollector;
import org.apache.hadoop.mapred.Reducer;
import org.apache.hadoop.mapred.Reporter;
import org.apache.hadoop.util.Tool;
import org.apache.hadoop.util.ToolRunner;

//Here the cloud2 class extends the below mentioned tool
	public class Cloud2 extends Configured implements Tool {
		 
	    public static class MapClass extends MapReduceBase implements Mapper<LongWritable, Text, Text, IntWritable> {
	 //initializing word object of Text.
	        private Text word = new Text();
	        // IntWritable class object one is created.
	        private final static IntWritable one = new IntWritable();
	        // method map is created;
			// Input: input text file 
			// Output: StationName+Year, Average Precipitation	
	        public void map(LongWritable key, Text value,
	                OutputCollector<Text, IntWritable> output, Reporter reporter)
	                throws IOException {
				// row to store tokens in string format is initialized
				// row is split using comma
				//the Date row is put into date1 variable
				//mean temperature is put into checktype;
	        	String row = value.toString();
	            String getToken[] = row.split(",");
	            String date1 = getToken[5];
	            
	            String checktype = getToken[8];
	            int check =  Integer.parseInt(checktype);
	                       
	            //condition to process average value with StationName and Date is Specified.
	          	if(date1.length() >= 5 && check >= 0)	{  
	          		String date = getToken[1]+"  "+date1.substring(0, 4);
	          		word.set(date);
	          		one.set(check);
					//output is sent to reducer.
	          		output.collect(word, one);
	          	}
	          		
	         }
	    }
	 
	    public static class Reduce extends MapReduceBase implements
	            Reducer<Text, IntWritable, Text, IntWritable> {
	       
	         public void reduce(Text key, Iterator<IntWritable> values,
	                OutputCollector<Text, IntWritable> output, Reporter reporter)
	                throws IOException {
	        	//sum is calculated for input given from mapper
	            int sum = 0;
	            int count = 0;
	            while (values.hasNext()) {
	                sum += values.next().get();
	                count++;
	            }
	            
	            sum = sum/count;
	            output.collect(key, new IntWritable(sum));
	        }
	    }
	 
	    public int run(String[] args) throws Exception {
	        JobConf conf = new JobConf(getConf(), Cloud2.class);
	        conf.setJobName("Precipitation");
	 
	        conf.setNumMapTasks(1);
	        conf.setNumReduceTasks(1);
	 
	        conf.setOutputKeyClass(Text.class);
	        conf.setOutputValueClass(IntWritable.class);
	 
	        conf.setMapperClass(MapClass.class);
	        conf.setCombinerClass(Reduce.class);
	        conf.setReducerClass(Reduce.class);
	 
	        FileInputFormat.setInputPaths(conf, new Path(args[0]));
	        FileOutputFormat.setOutputPath(conf, new Path(args[1]));
	 
	        JobClient.runJob(conf);
	        return 0;
	    }
	 
	    public static void main(String[] args) throws Exception {
	    	long startTime = System.currentTimeMillis();
	        int res = ToolRunner.run(new Configuration(), new Cloud2(), args);
	        long endTime   = System.currentTimeMillis();
	        long totalTime = endTime - startTime;
	        System.out.println(totalTime);
	        System.exit(res);
	    }
	}
/*
References:
http://cs.smith.edu/dftwiki/index.php/Hadoop_WordCount.java
https://sites.google.com/site/tacchadoop/home/word-count-example-part-i---create-your-own-jarhttp://hadoop.apache.org/docs/current/
http://www.michael-noll.com/tutorials/running-hadoop-on-ubuntu-linux-single-node-cluster/
http://www.ncdc.noaa.gov/cdo-web/;jsessionid=9C5CE855C411F2269EBF33EB5D3A8142
http://www.youtube.com/watch?v=ziqx2hJY8Hg
*/



