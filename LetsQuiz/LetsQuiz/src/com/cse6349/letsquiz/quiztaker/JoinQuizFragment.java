package com.cse6349.letsquiz.quiztaker;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.Socket;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Enumeration;
import java.util.HashMap;

import android.app.AlertDialog;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener;
import android.support.v7.app.ActionBar;
import android.support.v7.app.ActionBarActivity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.cse6349.letsquiz.PlaceholderFragment;
import com.cse6349.letsquiz.R;
import com.cse6349.letsquiz.conductor.ConductQuizFragment;

public class JoinQuizFragment extends Fragment {

	TextView textResponse;
	ActionBar actionbar;
	private ObjectInputStream sInput;
	private ObjectOutputStream sOutput;
	private Socket socket;
	private String server;
	private int port;
	int clientTotalScore=0,totalQuestions=0;
	String correctAnsHash;
	CountDownTimer cdt;
	int scoreTime;
	AlertDialog alertDialog;
	TextView timer;
	TextView vf_question_client;
	Button vf_opt1_btn,vf_opt2_btn,vf_opt3_btn,vf_opt4_btn;
	String clientUserName;
	EditText editTextAddress,client_username;
	Socket sendSocket;
	LayoutInflater inflater_quiz_client;
	LinearLayout join_quiz_child,connect_client_linear_layout,waiting_for_ques_linear_layout_client;
	RelativeLayout view_flipper_single_item_client;
	SwipeRefreshLayout swipeLayout;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		// custom action bar
		setHasOptionsMenu(true);
		// retain fragment on configuration changes
		setRetainInstance(true);
	}
	
	@Override
	public void onActivityCreated(Bundle savedInstanceState) {
		super.onActivityCreated(savedInstanceState);
		// get action bar object to hide and show
		actionbar = ((ActionBarActivity)getActivity()).getSupportActionBar();
		// display the back button on action bar
		actionbar.setDisplayHomeAsUpEnabled(true);
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		// view of the entire fragment. Inflate join_quiz_fragment
		final View rootView = inflater.inflate(R.layout.join_quiz_fragment,
				container, false);
		// get the LinearLayout of fragment
		join_quiz_child = (LinearLayout) rootView.findViewById(R.id.join_quiz_child);
		inflater_quiz_client = (LayoutInflater) getActivity().getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		
		// variables for "Waiting for question.." LinearLayout
		waiting_for_ques_linear_layout_client =  (LinearLayout) inflater_quiz_client.inflate(R.layout.waiting_for_ques_linear_layout_client, container, false);
		join_quiz_child.addView(waiting_for_ques_linear_layout_client);
		waiting_for_ques_linear_layout_client.setVisibility(View.GONE);
		
		
		// variables for connect LinearLayout
		connect_client_linear_layout =  (LinearLayout) inflater_quiz_client.inflate(R.layout.connect_client_linear_layout, container, false);
		join_quiz_child.addView(connect_client_linear_layout);
		
		swipeLayout = (SwipeRefreshLayout) connect_client_linear_layout
				.findViewById(R.id.swipe_container);
		swipeLayout.setColorSchemeResources(R.color.red, R.color.blue,
				R.color.green, R.color.purple);
		
		editTextAddress = (EditText) connect_client_linear_layout.findViewById(R.id.address);
		client_username = (EditText) connect_client_linear_layout.findViewById(R.id.client_username);
		textResponse = (TextView) connect_client_linear_layout.findViewById(R.id.response);
		
		// variables for client side view flipper
		view_flipper_single_item_client = (RelativeLayout) inflater_quiz_client.inflate(R.layout.view_flipper_single_item_client, container, false);
		join_quiz_child.addView(view_flipper_single_item_client);
		
		vf_question_client = (TextView) view_flipper_single_item_client.findViewById(R.id.vf_question_client);
		vf_opt1_btn = (Button) 	view_flipper_single_item_client.findViewById(R.id.vf_opt1_btn);
		vf_opt2_btn = (Button) 	view_flipper_single_item_client.findViewById(R.id.vf_opt2_btn);
		vf_opt3_btn = (Button) 	view_flipper_single_item_client.findViewById(R.id.vf_opt3_btn);
		vf_opt4_btn = (Button) 	view_flipper_single_item_client.findViewById(R.id.vf_opt4_btn);
		timer = (TextView) view_flipper_single_item_client.findViewById(R.id.timer12);
		view_flipper_single_item_client.setVisibility(View.GONE); 
		
		//handle on swipe down 
		swipeLayout.setOnRefreshListener(new OnRefreshListener() {
			@Override
			public void onRefresh() {
				// TODO Auto-generated method stub
				// Check for ip and user name string before connecting 
				if(editTextAddress.getText().toString().length()!=0 && client_username.getText().toString().length() != 0){
					Thread clienttt = new Thread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							clientUserName = client_username.getText().toString();
							// connect to client
							clientConnect();
								
						}
					});
					clienttt.start();
					// Hide the action bar
					actionbar.hide();
					// hide keyboard on connecting
					InputMethodManager imm = (InputMethodManager)getActivity().getSystemService(
						      Context.INPUT_METHOD_SERVICE);
						imm.hideSoftInputFromWindow(rootView.getWindowToken(), InputMethodManager.HIDE_NOT_ALWAYS);
				}else{
					Toast.makeText(getActivity(), "Enter valid IP and full name", Toast.LENGTH_SHORT).show();
					swipeLayout.setRefreshing(false);
				}
			}
		});
		return rootView;
	}

	public void clientConnect() {
		try {
			// Connect using the IP address  
			String ipaddr = editTextAddress.getText().toString();
			// port number 1234
			socket = new Socket(ipaddr, 1234);
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		getActivity().runOnUiThread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				swipeLayout.setRefreshing(false);
			}
		});
		try {
			sInput = new ObjectInputStream(socket.getInputStream());
			sOutput = new ObjectOutputStream(socket.getOutputStream());
			// send to server the user name.
			sendToServer(getLocalIpAddress());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// handle views after connection
		getActivity().runOnUiThread(new Runnable() {
			@Override
			public void run() {
				// Handle text views after connection
				connect_client_linear_layout.setVisibility(View.GONE);
				waiting_for_ques_linear_layout_client.setVisibility(View.VISIBLE);
			}
		});
		
		// handle options button on click.
		vf_opt1_btn.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// ask user to confirm before submitting the answer to server. 
				AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(getActivity());
				alertDialogBuilder.setTitle("Confirm");
				alertDialogBuilder
					.setMessage("Are you sure? ")
					.setCancelable(false)
					.setPositiveButton("Yes",new DialogInterface.OnClickListener() {
						public void onClick(DialogInterface dialog,int id) {
							//compute the hash of option selected and compare it with correctAnsHash received from server
							if(encrypt(vf_opt1_btn.getText().toString()).equals(correctAnsHash)){
								// if correct answer
								// add to score of client(time)
								clientTotalScore += scoreTime;
								// send to server the userName :::: optionSected :::: scoreOfCurrentQuestion :::: currentTotalScore/totalScore
								sendToServer(getLocalIpAddress()+"::::"+vf_opt1_btn.getText().toString()
										+"::::"+String.valueOf(scoreTime)+"::::"+ String.valueOf(clientTotalScore)+" / "+String.valueOf(totalQuestions));
							}else{
								// if wrong answer
								clientTotalScore += 0;
								// send score 0 as score since it is wrong score
								sendToServer(getLocalIpAddress()+"::::"+vf_opt1_btn.getText().toString()
										+"::::"+"0"+"::::"+ String.valueOf(clientTotalScore)+" / "+String.valueOf(totalQuestions));
							}
							// display the current score to the client
							Toast.makeText(getActivity(), String.valueOf(clientTotalScore)+" / "
									+String.valueOf(totalQuestions),Toast.LENGTH_LONG).show();
							view_flipper_single_item_client.setVisibility(View.GONE);
							// display "waiting for question..." linearlayout
							waiting_for_ques_linear_layout_client.setVisibility(View.VISIBLE);
							// end the countdown timer
							cdt.cancel();
						}
					  })
					  // do nothing if nothing selected
					.setNegativeButton("No",new DialogInterface.OnClickListener() {
						public void onClick(DialogInterface dialog,int id) {
						}
					});
				alertDialog = alertDialogBuilder.create();
				// show the dialog after creating it.
				alertDialog.show();
				
			}
		});
		
		// do the same for all options.
		vf_opt2_btn.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(getActivity());
				alertDialogBuilder.setTitle("Confirm");
				alertDialogBuilder
					.setMessage("Are you sure? ")
					.setCancelable(false)
					.setPositiveButton("Yes",new DialogInterface.OnClickListener() {
						public void onClick(DialogInterface dialog,int id) {
							//if yes
							if(encrypt(vf_opt2_btn.getText().toString()).equals(correctAnsHash)){
								clientTotalScore += scoreTime;
								sendToServer(getLocalIpAddress()+"::::"+vf_opt2_btn.getText().toString()
										+"::::"+String.valueOf(scoreTime)+"::::"+ String.valueOf(clientTotalScore)+" / "+String.valueOf(totalQuestions));
							}else{
								clientTotalScore += 0;
								sendToServer(getLocalIpAddress()+"::::"+vf_opt2_btn.getText().toString()
										+"::::"+"0"+"::::"+ String.valueOf(clientTotalScore)+" / "+String.valueOf(totalQuestions));
							}
							Toast.makeText(getActivity(), String.valueOf(clientTotalScore)+" / "
									+String.valueOf(totalQuestions),Toast.LENGTH_LONG).show();
							view_flipper_single_item_client.setVisibility(View.GONE);
							waiting_for_ques_linear_layout_client.setVisibility(View.VISIBLE);
							cdt.cancel();
						}
					  })
					.setNegativeButton("No",new DialogInterface.OnClickListener() {
						public void onClick(DialogInterface dialog,int id) {
						}
					});
				alertDialog = alertDialogBuilder.create();
				alertDialog.show();
			}
		});
		vf_opt3_btn.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(getActivity());
				alertDialogBuilder.setTitle("Confirm");
				alertDialogBuilder
					.setMessage("Are you sure? ")
					.setCancelable(false)
					.setPositiveButton("Yes",new DialogInterface.OnClickListener() {
						public void onClick(DialogInterface dialog,int id) {
							//if yes
							if(encrypt(vf_opt3_btn.getText().toString()).equals(correctAnsHash)){
								clientTotalScore += scoreTime;
								sendToServer(getLocalIpAddress()+"::::"+vf_opt3_btn.getText().toString()
										+"::::"+String.valueOf(scoreTime)+"::::"+ String.valueOf(clientTotalScore)+" / "+String.valueOf(totalQuestions));
								
							}else{
								clientTotalScore += 0;
								sendToServer(getLocalIpAddress()+"::::"+vf_opt3_btn.getText().toString()
										+"::::"+"0"+"::::"+ String.valueOf(clientTotalScore)+" / "+String.valueOf(totalQuestions));
								
							}
							Toast.makeText(getActivity(), String.valueOf(clientTotalScore)+" / "
									+String.valueOf(totalQuestions),Toast.LENGTH_LONG).show();
							view_flipper_single_item_client.setVisibility(View.GONE);
							waiting_for_ques_linear_layout_client.setVisibility(View.VISIBLE);
							cdt.cancel();
						}
					  })
					.setNegativeButton("No",new DialogInterface.OnClickListener() {
						public void onClick(DialogInterface dialog,int id) {
						}
					});
				alertDialog = alertDialogBuilder.create();
				alertDialog.show();
			}
		});
		vf_opt4_btn.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(getActivity());
				alertDialogBuilder.setTitle("Confirm");
				alertDialogBuilder
					.setMessage("Are you sure? ")
					.setCancelable(false)
					.setPositiveButton("Yes",new DialogInterface.OnClickListener() {
						public void onClick(DialogInterface dialog,int id) {
							//if yes
							if(encrypt(vf_opt4_btn.getText().toString()).equals(correctAnsHash)){
								clientTotalScore += scoreTime;
								sendToServer(getLocalIpAddress()+"::::"+vf_opt4_btn.getText().toString()
										+"::::"+String.valueOf(scoreTime)+"::::"+ String.valueOf(clientTotalScore)+" / "+String.valueOf(totalQuestions));
								
							}else{
								clientTotalScore += 0;
								sendToServer(getLocalIpAddress()+"::::"+vf_opt4_btn.getText().toString()
										+"::::"+"0"+"::::"+ String.valueOf(clientTotalScore)+" / "+String.valueOf(totalQuestions));
								
							}
							Toast.makeText(getActivity(), String.valueOf(clientTotalScore)+" / "
									+String.valueOf(totalQuestions),Toast.LENGTH_LONG).show();
							view_flipper_single_item_client.setVisibility(View.GONE);
							waiting_for_ques_linear_layout_client.setVisibility(View.VISIBLE);
							cdt.cancel();
						}
					  })
					.setNegativeButton("No",new DialogInterface.OnClickListener() {
						public void onClick(DialogInterface dialog,int id) {
						}
					});
				alertDialog = alertDialogBuilder.create();
				alertDialog.show();
			}
		});
		
		new ListenFromServer().start();
	}
	
	// method that is used to send to server 
	public void sendToServer(String str){
		try {
			// write the object(string in this case) to output stream
			sOutput.writeObject(str);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// Thread that always listens to server.
	class ListenFromServer extends Thread {
		public void run() {
			while (true) {
				try {
					// read the input message received from string
					final String msg = (String) sInput.readObject();
					getActivity().runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// Check message received
							// check for "<><><>" string which indicated the end of quiz
							if(msg.contains("<><><>")){
								// if end of quiz, send the final scores to server
								sendToServer(getLocalIpAddress()+"::::"+null+"::::"+null
										+"::::"+String.valueOf(clientTotalScore)+" / "+String.valueOf(totalQuestions));
								actionbar.show();
								// Go to final score fragment
								FragmentManager fragmentManager = getFragmentManager();
								FragmentTransaction fragmentTransaction = fragmentManager
										.beginTransaction();
								FinalScoreClientFragment finalScoreClientFragment = 
										new FinalScoreClientFragment(String.valueOf(clientTotalScore)+" / "+String.valueOf(totalQuestions));
								fragmentTransaction.remove(JoinQuizFragment.this);
								fragmentTransaction.addToBackStack(null);
								fragmentTransaction.replace(android.R.id.content, finalScoreClientFragment);
								fragmentTransaction.commit();
								Toast.makeText(getActivity(), "Quiz finished", Toast.LENGTH_LONG).show();
							}else if(msg.contains("::::")){
								// check if message contains "::::" identifier, which indicates it as a question.
								totalQuestions +=10;
								// remove the "waiting for question.." and show view flipper linear layout.
								view_flipper_single_item_client.setVisibility(View.VISIBLE);
								waiting_for_ques_linear_layout_client.setVisibility(View.GONE);
								// split the received string at "::::" and set all the option buttons and question
								vf_question_client.setText(msg.split("::::")[0]);
								vf_opt1_btn.setText(msg.split("::::")[1]);
								vf_opt2_btn.setText(msg.split("::::")[2]);
								vf_opt3_btn.setText(msg.split("::::")[3]);
								vf_opt4_btn.setText(msg.split("::::")[4]);
								correctAnsHash = msg.split("::::")[5];
								
								// start the count down timer
								cdt = new CountDownTimer(10500,1000) {
									@Override
									public void onTick(long millisUntilFinished) {
										// TODO Auto-generated method stub
										timer.setText("Remaining time: "+ String.valueOf(millisUntilFinished/1000));
										scoreTime = (int)millisUntilFinished/1000;
									}
									
									@Override
									public void onFinish() {
										// TODO Auto-generated method stub
										Toast.makeText(getActivity(), "Time up!!", Toast.LENGTH_SHORT).show();
										// of not answered send zero score to the server.
										sendToServer(getLocalIpAddress()+"::::"+null+"::::"+String.valueOf(0)
												+"::::"+ String.valueOf(clientTotalScore)+" / "+String.valueOf(totalQuestions));
										// update the score.
										clientTotalScore += 0;
										view_flipper_single_item_client.setVisibility(View.GONE);
										waiting_for_ques_linear_layout_client.setVisibility(View.VISIBLE);
										if(alertDialog != null && alertDialog.isShowing()){
											alertDialog.dismiss();
										}
									}
								}.start();
							}
							
						}
					});
				} catch (IOException e) {
					e.getStackTrace();

					break;
				}
				// can't happen with a String object but need the catch anyhow
				catch (ClassNotFoundException e2) {
				}
			}
		}
	}
	
	public String getLocalIpAddress() {
		// get user name instead of IP address.
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

		//return ip;
		return clientUserName;
	}
	
	@Override
	public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
		// TODO Auto-generated method stub
		//super.onCreateOptionsMenu(menu, inflater);
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
			fragmentTransaction.remove(JoinQuizFragment.this);
			fragmentTransaction.addToBackStack(null);
			fragmentTransaction.replace(android.R.id.content, placeholderFragment);
			fragmentTransaction.commit();
	        return true;
	    }
	    return super.onOptionsItemSelected(item);
	}
	
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

}
