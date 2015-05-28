package com.cse6349.letsquiz.quiztaker;

import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.ActionBar;
import android.support.v7.app.ActionBarActivity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.cse6349.letsquiz.PlaceholderFragment;
import com.cse6349.letsquiz.R;

public class FinalScoreClientFragment extends Fragment {

	String finalScore;
	ActionBar actionbar;

	public FinalScoreClientFragment(String finalScore) {
		super();
		this.finalScore = finalScore;
	}
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		setHasOptionsMenu(true);
		super.onCreate(savedInstanceState);
		
	}
	
	@Override
	public void onActivityCreated(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onActivityCreated(savedInstanceState);
		actionbar = ((ActionBarActivity)getActivity()).getSupportActionBar();
		actionbar.setDisplayHomeAsUpEnabled(true);
		//
		
	}

	@Override
	public View onCreateView(LayoutInflater inflater,
			@Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		View rootView = inflater.inflate(R.layout.final_score_client,
				container, false);
		// display the final score to client
		TextView final_score = (TextView) rootView
				.findViewById(R.id.final_score);
		final_score.setText("Your Final Score: " + "\n" + finalScore);
		return rootView;
	}

	@Override
	public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
		// TODO Auto-generated method stub
		inflater.inflate(R.menu.empty_menu, menu);
		menu.clear();
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		// TODO Auto-generated method stub
		switch (item.getItemId()) {
		// Respond to the action bar's Up/Home button
		case android.R.id.home:
			FragmentManager fragmentManager = getFragmentManager();
			FragmentTransaction fragmentTransaction = fragmentManager
					.beginTransaction();
			PlaceholderFragment placeholderFragment = new PlaceholderFragment();
			fragmentTransaction.remove(FinalScoreClientFragment.this);
			fragmentTransaction.addToBackStack(null);
			fragmentTransaction.replace(android.R.id.content,
					placeholderFragment);
			fragmentTransaction.commit();
			return true;
		}
		return super.onOptionsItemSelected(item);
	}
}
