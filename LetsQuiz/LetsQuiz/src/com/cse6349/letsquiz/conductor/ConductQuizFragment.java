package com.cse6349.letsquiz.conductor;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OptionalDataException;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;

import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Color;
import android.graphics.PorterDuff.Mode;
import android.os.Bundle;
import android.support.v4.view.MotionEventCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.app.ActionBarActivity;
import android.util.Log;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ViewFlipper;

import com.cse6349.letsquiz.PlaceholderFragment;
import com.cse6349.letsquiz.R;
import com.cse6349.letsquiz.database.SqlDatabase;
import com.cse6349.letsquiz.quiztaker.FinalScoreClientFragment;
import com.cse6349.letsquiz.quiztaker.JoinQuizFragment;

public class ConductQuizFragment extends Fragment {

	int numberOfQuesSent=0;
	TextView serverIP_tv;
	ActionBar actionbar;
	HashMap<String, String> finalScoreHashMap; 
	TextView msg,progress_in_number;
	SqlDatabase sqlDatabse;
	SQLiteDatabase db;
	String category_selected;
	private static int uniqueId;
	int total_replies_count=0;
	String message = "";
	boolean flipAround = true;
	TextView total_clients,total_replies;
	List<ViewFlipperObject> vfo;
	Animation in_from_left, out_to_right,in_from_right,out_to_left;
	float lastX,lastY;
	String displayMsg = "";
	ListView categories_list;
	Button select_category,finish_quiz,prev_ques_btn,next_ques_btn;
	ServerSocket serverSocket;
	ProgressBar progressBar1;
	LayoutInflater inflater_quiz;
	public ViewFlipper question_view_flipper;
	LinearLayout connect_linear_layout,parent_linear_layout, categories_linear_layout,view_flipper_linear_layout;
	ArrayList<ClientThread> al = new ArrayList<ClientThread>();

	public ConductQuizFragment() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setHasOptionsMenu(true);
	}
	
	@Override
	public void onActivityCreated(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onActivityCreated(savedInstanceState);
		actionbar = ((ActionBarActivity)getActivity()).getSupportActionBar();
		actionbar.setDisplayHomeAsUpEnabled(true);
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		View rootView = inflater.inflate(R.layout.conduct_quiz_fragment,
				container, false);
		// get hash map to store all scores of clients
		finalScoreHashMap = new HashMap<String,String>();
		
		parent_linear_layout = (LinearLayout) rootView.findViewById(R.id.parent_linear_layout);
		inflater_quiz = (LayoutInflater) getActivity().getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		
		// Database objects
		sqlDatabse =  new SqlDatabase(getActivity());
		db = sqlDatabse.getReadableDatabase();
		//
		
		// connect Linear layout Items
		connect_linear_layout =  (LinearLayout) inflater_quiz.inflate(R.layout.connect_linear_layout, container, false);
		parent_linear_layout.addView(connect_linear_layout);
		serverIP_tv = (TextView) connect_linear_layout.findViewById(R.id.serverIP_tv);
		msg = (TextView) connect_linear_layout.findViewById(R.id.msg);
		select_category = (Button) connect_linear_layout.findViewById(R.id.select_category);
		select_category.setVisibility(View.GONE);
		// end of connet linear layout items
		
		// category linear layout items
		categories_linear_layout = (LinearLayout) inflater_quiz.inflate(R.layout.categories_fragment, container, false);
		parent_linear_layout.addView(categories_linear_layout);
		categories_list =  (ListView) categories_linear_layout.findViewById(R.id.categories_list);
		String select_categories_query = "select " +SqlDatabase.CATEGORY + " from " + SqlDatabase.TABLE_NAME + " group by " + SqlDatabase.CATEGORY;
		Cursor c = db.rawQuery(select_categories_query, null);
		final List<String> values = new ArrayList<String>();
		if(c.moveToFirst()){
			values.add(c.getString(c.getColumnIndex(SqlDatabase.CATEGORY)));
		}
		while(c.moveToNext()){
			values.add(c.getString(c.getColumnIndex(SqlDatabase.CATEGORY)));
		}
	    ArrayAdapter<String> adapter = new ArrayAdapter<String>(getActivity(),android.R.layout.simple_list_item_1, values);
	    categories_list.setAdapter(adapter); 
		
		categories_linear_layout.setVisibility(View.GONE);
		// end of category linear layout
		
		// start of view flipper linear layout
		view_flipper_linear_layout = (LinearLayout) inflater_quiz.inflate(R.layout.view_flipper_linear_layout, container, false);
		parent_linear_layout.addView(view_flipper_linear_layout);
		view_flipper_linear_layout.setVisibility(View.GONE);
		prev_ques_btn = (Button) view_flipper_linear_layout.findViewById(R.id.prev_ques_btn);
		next_ques_btn = (Button) view_flipper_linear_layout.findViewById(R.id.next_ques_btn);
		question_view_flipper = (ViewFlipper) view_flipper_linear_layout.findViewById(R.id.question_view_flipper);
		finish_quiz = (Button) view_flipper_linear_layout.findViewById(R.id.finish_quiz);
		progressBar1 = (ProgressBar) view_flipper_linear_layout.findViewById(R.id.progressBar1);
		progressBar1.getProgressDrawable().setColorFilter(Color.RED, Mode.SRC_IN);
		total_clients = (TextView) view_flipper_linear_layout.findViewById(R.id.total_clients);
		progress_in_number =(TextView) view_flipper_linear_layout.findViewById(R.id.progress_in_number);
		total_replies = (TextView) view_flipper_linear_layout.findViewById(R.id.total_replies);
		//end of view flipper linear layout
		
		finish_quiz.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				// on finish button clicked, broadcast "<><><>" sring to indicate the end of string 
				broadcast("<><><>");
				// transit to final score fragment
				FinalScoreConductorFragment finalScoreConductorFragment = new FinalScoreConductorFragment(finalScoreHashMap);
				FragmentManager fragmentManager = getFragmentManager();
				FragmentTransaction fragmentTransaction = fragmentManager
						.beginTransaction();
				fragmentTransaction.remove(ConductQuizFragment.this);
				fragmentTransaction.replace(android.R.id.content, finalScoreConductorFragment);
				fragmentTransaction.commit();
				
				Toast.makeText(getActivity(), "quiz finished", Toast.LENGTH_SHORT).show();
			}
		}); 
		
		// go to next question
		next_ques_btn.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				question_view_flipper.setInAnimation(getActivity(), R.anim.in_from_right);
                question_view_flipper.setOutAnimation(getActivity(), R.anim.out_to_left);
				question_view_flipper.showNext();
			}
		});
		
		// go to previous question
		prev_ques_btn.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				 question_view_flipper.setInAnimation(getActivity(), R.anim.in_from_left);
                 question_view_flipper.setOutAnimation(getActivity(), R.anim.out_to_right);
				question_view_flipper.showPrevious();
			}
		});
		
		// Listener for select category button
		select_category.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				connect_linear_layout.setVisibility(View.GONE);
				categories_linear_layout.setVisibility(View.VISIBLE);
			}
		});
		
		// on selecting item in the list 
		categories_list.setOnItemClickListener(new OnItemClickListener() {
			@Override
			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				// TODO Auto-generated method stub
				category_selected = values.get(position);
				// remove the categories linear layout
				categories_linear_layout.setVisibility(View.GONE);
				// show the view flipper
				view_flipper_linear_layout.setVisibility(View.VISIBLE);
				// call the handle view flipper to populate view flipper with selected category questions
				handleViewFlipper(category_selected);
			}
			
		});

		// thread to start the to handle the socket connection
		Thread socketThread = new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				connect();
			}
		});
		socketThread.start();
		
		// on swipe up listener, this method is called when the touch event is detected
		view_flipper_linear_layout.setOnTouchListener(new View.OnTouchListener() {
			@Override
			public boolean onTouch(View v, MotionEvent touchevent) {
				// TODO Auto-generated method stub
				int action = MotionEventCompat.getActionMasked(touchevent);
				switch(action) {
		        case (MotionEvent.ACTION_DOWN) :
		        {
		        	//lastX = touchevent.getX();
		        	// get the y-coordinates of the touch position 
                    lastY = touchevent.getY();
                    Log.d("Down", String.valueOf(lastX));
                    return true;
		        }
		        case (MotionEvent.ACTION_UP) :
		        {
		        	//compare it with the y-coordinates of the end position
                    float currentY = touchevent.getY();
                    if(flipAround){
                    	// get hash of the correct answer
                    	String ansHash = getHashOfCorrectAns(vfo.get(question_view_flipper.getDisplayedChild()).getCorrect_answer());
                    	// if lastY is greater than current Y then it is a swipe-up event.
                        if((lastY - currentY) > 150 && question_view_flipper.getDisplayedChild()+1 != vfo.size() ){
                        	total_clients.setText("Total number of clients connected: "+String.valueOf(uniqueId));
                        	// set animation parameters
                     	   	question_view_flipper.setInAnimation(getActivity(), R.anim.in_from_right);
                     	   	question_view_flipper.setOutAnimation(getActivity(), R.anim.out_to_top);
                     	   	// broadcast the question to all the clients
                           broadcast(vfo.get(question_view_flipper.getDisplayedChild()).getQuestion()+"::::"
                        		   +vfo.get(question_view_flipper.getDisplayedChild()).getOpt1()+"::::"
                        		   +vfo.get(question_view_flipper.getDisplayedChild()).getOpt2()+"::::"
                        		   +vfo.get(question_view_flipper.getDisplayedChild()).getOpt3()+"::::"
                        		   +vfo.get(question_view_flipper.getDisplayedChild()).getOpt4()+"::::"
                        		   +ansHash);
                           
                           if(total_replies_count != 0){
                        	   total_replies_count = 0;
                           }
                           // set total number of replies text to 0 initially
                           total_replies.setText("Total number of replies: "+String.valueOf(total_replies_count));
                           question_view_flipper.showNext();
                           progressBar1.setProgress(++numberOfQuesSent);
                           progress_in_number.setText(String.valueOf(numberOfQuesSent)+"/"+vfo.size());
                          
                        }else{
                        	 // if this is the last question 
                        	if(question_view_flipper.getDisplayedChild()+1 == vfo.size()){
                        		// broad last question and show end of quiz slide
                        		broadcast(vfo.get(question_view_flipper.getDisplayedChild()).getQuestion()+"::::"
                             		   +vfo.get(question_view_flipper.getDisplayedChild()).getOpt1()+"::::"
                             		   +vfo.get(question_view_flipper.getDisplayedChild()).getOpt2()+"::::"
                             		   +vfo.get(question_view_flipper.getDisplayedChild()).getOpt3()+"::::"
                             		   +vfo.get(question_view_flipper.getDisplayedChild()).getOpt4()+"::::"
                             		  +ansHash);
                        		if(total_replies_count != 0){
                             	   total_replies_count = 0;
                                }
                        		total_replies.setText("Total number of replies: "+String.valueOf(total_replies_count));
                        		question_view_flipper.showNext();	
                        	}
                        		
                        }
                        		
                        if(question_view_flipper.getDisplayedChild() ==  vfo.size()){
                        	finish_quiz.setVisibility(View.VISIBLE);
                        	next_ques_btn.setVisibility(View.GONE);
                        	prev_ques_btn.setVisibility(View.GONE);
                        	progressBar1.setProgress(++numberOfQuesSent);
                        	progress_in_number.setText(String.valueOf(numberOfQuesSent)+"/"+vfo.size());
                        	//set flipAround to false to disable the swipe up action
                        	flipAround = false;
                        }else{
                        	// do nothing
                        }
                    }
                    return true;
                }    
		    }
                 return false;
			}
		});
		
		return rootView;
	}
	
	private synchronized void broadcast(String message) {
		// for broadcasting to all clients
		for (int i = al.size(); --i >= 0;) {
			ClientThread ct = al.get(i);
			ct.writeMsg(message);
		}
	}

	public void connect(){
		
		try{
		 final int SocketServerPORT = 1234;
		serverSocket = new ServerSocket(SocketServerPORT);
		getActivity().runOnUiThread(new Runnable() {
				@Override
				public void run() {
					String ip = getLocalIpAddress();
					serverIP_tv.setText(ip /*+ " : " + SocketServerPORT*/);
				}
			});
		// run infinetly to connect any number of clients
			while (true) {
				final Socket socket = serverSocket.accept();
				getActivity().runOnUiThread(new Runnable() {
					@Override
					public void run() {
						displayMsg += "New Client connected"+"\n";
						msg.setText(String.valueOf(displayMsg));
					}
				});
				
				Thread ct;
				// on new client connects start a new thread for client
				ct = new Thread(new Runnable() {
					
					@Override
					public void run() {
						// TODO Auto-generated method stub
						ClientThread t = new ClientThread(socket);
						al.add(t);
						t.run();
					}
				});
				ct.start();
				
			}
		}catch(Exception e){
			e.getStackTrace();
		}
	}

	// get IP address of server
	public String getLocalIpAddress() {
		String ip = "";
		try {
			Enumeration<NetworkInterface> enumNetworkInterfaces = NetworkInterface
					.getNetworkInterfaces();
			while (enumNetworkInterfaces.hasMoreElements()) {
				NetworkInterface networkInterface = enumNetworkInterfaces
						.nextElement();
				Enumeration<InetAddress> enumInetAddress = networkInterface
						.getInetAddresses();
				while (enumInetAddress.hasMoreElements()) {
					InetAddress inetAddress = enumInetAddress.nextElement();

					if (inetAddress.isSiteLocalAddress()) {
						ip += inetAddress.getHostAddress();
					}

				}

			}

		} catch (SocketException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			ip += "Something Wrong! " + e.toString() + "\n";
		}

		return ip;
	}

	class ClientThread extends Thread {
		// the socket where to listen/talk
		Socket socket;
		ObjectInputStream sInput;
		ObjectOutputStream sOutput;
		int id;
		String username;
		String cm;

		ClientThread(final Socket socket) {
			// a unique id
			id = ++uniqueId;
			
			this.socket = socket;
			System.out
					.println("Thread trying to create Object Input/Output Streams");
			try {
				// create both streams for input and output
				sOutput = new ObjectOutputStream(socket.getOutputStream());
				sInput = new ObjectInputStream(socket.getInputStream());
				sOutput.writeObject("sasdfsad");
				getActivity().runOnUiThread(new Runnable() {
					@Override
					public void run() {
						displayMsg += String.valueOf(id)+"\n";
						msg.setText(displayMsg);
					}
				});
				Thread listenClientThread = new Thread(new Runnable() {
					
					@Override
					public void run() {
						// TODO Auto-generated method stub
						// for listening from server
						listenClient(sInput);
					}
				});
				// start the listen form server thread
				listenClientThread.start();
			} catch (IOException e) {
				e.getStackTrace();
				return;
			}
		}
		
		private synchronized void listenClient(ObjectInputStream sInputClient) {
			// TODO Auto-generated method stub
			while(true){
				try {
					final String readMsg = (String) sInputClient.readObject();
					getActivity().runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// check if its a reply form client
							if(readMsg.contains("::::")){
								// increase count of number of replies received
								total_replies.setText("Total number of replies: "+String.valueOf(++total_replies_count));
								// put the score on to hash map
								finalScoreHashMap.put(readMsg.split("::::")[0], readMsg.split("::::")[3]);
							}else{
								select_category.setVisibility(View.VISIBLE);
								displayMsg += readMsg +"\n";
								msg.setText(displayMsg);
							}
						}
					});
				} catch (OptionalDataException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}

		
		private boolean writeMsg(String msg) {
			// write the message to the stream
			try {
				sOutput.writeObject(msg);
			}
			catch (IOException e) {
				e.getStackTrace();
			}
			return true;
		}
	}
	
	@Override
	public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
		// TODO Auto-generated method stub
		inflater.inflate(R.menu.empty_menu, menu);
		 menu.clear();
	}
	
	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
	    switch (item.getItemId()) {
	    // Respond to the action bar's Up/Home button
	    case android.R.id.home:
	        FragmentManager fragmentManager = getFragmentManager();
			FragmentTransaction fragmentTransaction = fragmentManager
					.beginTransaction();
			PlaceholderFragment placeholderFragment = new PlaceholderFragment();
			fragmentTransaction.remove(ConductQuizFragment.this);
			fragmentTransaction.addToBackStack(null);
			fragmentTransaction.replace(android.R.id.content, placeholderFragment);
			fragmentTransaction.commit();
	        return true;
	    }
	    return super.onOptionsItemSelected(item);
	}
	
	// method to create viewflipper object read from database
	private void handleViewFlipper(String category_selected) {
		// TODO Auto-generated method stub
		String select_questions_query = "select * from " + SqlDatabase.TABLE_NAME + " where "+ SqlDatabase.CATEGORY +" = '"+ category_selected+"'";
		Cursor c = db.rawQuery(select_questions_query, null);
		vfo = new ArrayList<ViewFlipperObject>();
		if(c.moveToFirst()){
			vfo.add(new ViewFlipperObject( c.getString(c.getColumnIndex(SqlDatabase.QUESTION)),
					c.getString(c.getColumnIndex(SqlDatabase.OPTION1)), 
					c.getString(c.getColumnIndex(SqlDatabase.OPTION2)),
					c.getString(c.getColumnIndex(SqlDatabase.OPTION3)), 
					c.getString(c.getColumnIndex(SqlDatabase.OPTION4)), 
					c.getString(c.getColumnIndex(SqlDatabase.ANSWER))));
			
		}
		while(c.moveToNext()){
			vfo.add(new ViewFlipperObject( c.getString(c.getColumnIndex(SqlDatabase.QUESTION)),
					c.getString(c.getColumnIndex(SqlDatabase.OPTION1)), 
					c.getString(c.getColumnIndex(SqlDatabase.OPTION2)),
					c.getString(c.getColumnIndex(SqlDatabase.OPTION3)), 
					c.getString(c.getColumnIndex(SqlDatabase.OPTION4)), 
					c.getString(c.getColumnIndex(SqlDatabase.ANSWER))));
		}
		
		progressBar1.setMax(vfo.size());
		
		for(int i=0;i<vfo.size();i++){
			//LayoutInflater viewFlipperInflater = (LayoutInflater) getActivity().getSystemService(Context.LAYOUT_INFLATER_SERVICE);
			View vf_child = getActivity().getLayoutInflater().inflate(R.layout.viewflipper_single_item,null);
			TextView ques_vf = (TextView) vf_child.findViewById(R.id.vf_question);
			TextView opt1_vf = (TextView) vf_child.findViewById(R.id.vf_opt1);
			TextView opt2_vf = (TextView) vf_child.findViewById(R.id.vf_opt2);
			TextView opt3_vf = (TextView) vf_child.findViewById(R.id.vf_opt3);
			TextView opt4_vf = (TextView) vf_child.findViewById(R.id.vf_opt4);
			
			ques_vf.setText(vfo.get(i).getQuestion());
			opt1_vf.setText(vfo.get(i).getOpt1());
			opt2_vf.setText(vfo.get(i).getOpt2());
			opt3_vf.setText(vfo.get(i).getOpt3());
			opt4_vf.setText(vfo.get(i).getOpt4());
			
			question_view_flipper.addView(vf_child);
			
		}
		
		TextView end_of_quiz = new TextView(getActivity());
		end_of_quiz.setText("End of quiz");
		end_of_quiz.setGravity(Gravity.CENTER);
		end_of_quiz.setTextSize((float) 20.0);
		question_view_flipper.addView(end_of_quiz);
	}
	
	
	// code for converting the string to hash
	public String encrypt(String s) {
	    try {
	        // Create MD5 Hash
	        MessageDigest digest = java.security.MessageDigest.getInstance("MD5");
	        digest.update(s.getBytes());
	        byte messageDigest[] = digest.digest();

	        // Create Hex String
	        StringBuffer hexString = new StringBuffer();
	        for (int i=0; i<messageDigest.length; i++)
	            hexString.append(Integer.toHexString(0xFF & messageDigest[i]));
	        return hexString.toString();

	    } catch (NoSuchAlgorithmException e) {
	        e.printStackTrace();
	    }
	    return "";
	}
	
	public String getHashOfCorrectAns(String ss){
		switch(ss){
		case "A":
			return encrypt(vfo.get(question_view_flipper.getDisplayedChild()).getOpt1());
		case "B":
			return encrypt(vfo.get(question_view_flipper.getDisplayedChild()).getOpt2());
		case "C":
			return encrypt(vfo.get(question_view_flipper.getDisplayedChild()).getOpt3());
		case "D":
			return encrypt(vfo.get(question_view_flipper.getDisplayedChild()).getOpt4());
		default:
			return null;
			
		}
	}
}
