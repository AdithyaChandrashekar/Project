package com.cse6349.letsquiz;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.app.ActionBarActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;

import com.cse6349.letsquiz.conductor.ConductQuizFragment;
import com.cse6349.letsquiz.quiztaker.JoinQuizFragment;

public class PlaceholderFragment extends Fragment {

	ActionBar actionbar;
	RadioGroup radioGroup;
	RadioButton rb1;
	RadioButton rb2;
	Button next_btn;

	public PlaceholderFragment() {
	}
	
	@Override
	public void onActivityCreated(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onActivityCreated(savedInstanceState);
		actionbar = ((ActionBarActivity)getActivity()).getSupportActionBar();
		actionbar.setDisplayHomeAsUpEnabled(false);
	}

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		View rootView = inflater.inflate(R.layout.fragment_start, container,
				false);
		radioGroup = (RadioGroup) rootView.findViewById(R.id.radioGroup1);
		rb1 = (RadioButton) rootView.findViewById(R.id.conductquiz_rb);
		rb2 = (RadioButton) rootView.findViewById(R.id.joinquiz_rb);
		next_btn = (Button) rootView.findViewById(R.id.next_btn_startfrag);
		next_btn.setVisibility(View.GONE);
		
		next_btn.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				FragmentManager fragmentManager = getFragmentManager();
				FragmentTransaction fragmentTransaction = fragmentManager
						.beginTransaction();
				
				int selectedId = radioGroup.getCheckedRadioButtonId();
				if (selectedId == R.id.conductquiz_rb) {
					ConductQuizFragment conduct = new ConductQuizFragment();
					fragmentTransaction.remove(PlaceholderFragment.this);
					fragmentTransaction.addToBackStack(null);
					fragmentTransaction.replace(android.R.id.content, conduct);
				} else if (selectedId == R.id.joinquiz_rb) {
					JoinQuizFragment join = new JoinQuizFragment();
					fragmentTransaction.remove(PlaceholderFragment.this);
					fragmentTransaction.addToBackStack(null);
					fragmentTransaction.replace(android.R.id.content, join);
				}
				fragmentTransaction.commit();
			}
		});
		
		radioGroup.setOnCheckedChangeListener(new OnCheckedChangeListener() {
			@Override
			public void onCheckedChanged(RadioGroup group, int checkedId) {
				// TODO Auto-generated method stub
				next_btn.setVisibility(View.VISIBLE);
			}
		});

		return rootView;
	}
}
