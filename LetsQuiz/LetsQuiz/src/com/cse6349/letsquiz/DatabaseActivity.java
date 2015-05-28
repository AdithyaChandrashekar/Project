package com.cse6349.letsquiz;

import com.cse6349.letsquiz.database.SqlDatabase;

import android.app.Activity;
import android.app.Fragment;
import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;

public class DatabaseActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_database);
		if (savedInstanceState == null) {
			getFragmentManager().beginTransaction()
					.add(R.id.container, new PlaceholderFragment()).commit();
		}
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.database, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		// Handle action bar item clicks here. The action bar will
		// automatically handle clicks on the Home/Up button, so long
		// as you specify a parent activity in AndroidManifest.xml.
		int id = item.getItemId();
		if (id == R.id.action_settings) {
			return true;
		}
		return super.onOptionsItemSelected(item);
	}

	/**
	 * A placeholder fragment containing a simple view.
	 */
	public static class PlaceholderFragment extends Fragment {

		SQLiteDatabase db;
		SqlDatabase database;
		EditText category,question,opt1,opt2,opt3,opt4;
		Spinner correct_option;
		Button add_btn,clear_btn;
		
		public PlaceholderFragment() {
		}

		@Override
		public View onCreateView(LayoutInflater inflater, ViewGroup container,
				Bundle savedInstanceState) {
			View rootView = inflater.inflate(R.layout.fragment_database,
					container, false);
			
			database =  new SqlDatabase(getActivity());
			db = database.getWritableDatabase();
			
			
			
			category = (EditText) rootView.findViewById(R.id.question_category);
			question  = (EditText) rootView.findViewById(R.id.question);
			opt1  = (EditText) rootView.findViewById(R.id.opt1);
			opt2  = (EditText) rootView.findViewById(R.id.opt2);
			opt3  = (EditText) rootView.findViewById(R.id.opt3);
			opt4  = (EditText) rootView.findViewById(R.id.opt4);
			correct_option = (Spinner) rootView.findViewById(R.id.correct_option);
			add_btn = (Button) rootView.findViewById(R.id.add_to_db_btn);
			clear_btn = (Button) rootView.findViewById(R.id.clear_db_btn);
			
			add_btn.setOnClickListener(new OnClickListener() {
				
				@Override
				public void onClick(View v) {
					// TODO Auto-generated method stub
					ContentValues cv =  new ContentValues();
					
					cv.put(SqlDatabase.CATEGORY, category.getText().toString());
					cv.put(SqlDatabase.QUESTION, question.getText().toString());
					cv.put(SqlDatabase.OPTION1, opt1.getText().toString());
					cv.put(SqlDatabase.OPTION2, opt2.getText().toString());
					cv.put(SqlDatabase.OPTION3, opt3.getText().toString());
					cv.put(SqlDatabase.OPTION4, opt4.getText().toString());
					cv.put(SqlDatabase.ANSWER, String.valueOf(correct_option.getSelectedItem()));
					
					db.insert(SqlDatabase.TABLE_NAME, null, cv);
				}
			});
			
			clear_btn.setOnClickListener(new OnClickListener() {
				@Override
				public void onClick(View v) {
					// TODO Auto-generated method stub
					category.setText("");
					question.setText("");
					opt1.setText("");
					opt2.setText("");
					opt3.setText("");
					opt4.setText("");
					correct_option.setSelection(0);
				}
			});
			
			return rootView;
		}
	}
}
