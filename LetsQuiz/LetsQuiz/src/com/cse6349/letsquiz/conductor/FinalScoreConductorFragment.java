package com.cse6349.letsquiz.conductor;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import com.cse6349.letsquiz.PlaceholderFragment;
import com.cse6349.letsquiz.R;

public class FinalScoreConductorFragment extends Fragment{
	
	HashMap<String, String> mp;
	ListView client_scores_list;
	List<String> client_scores_list1;
	

	@Override
	public void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setHasOptionsMenu(true);
	}
	
	public FinalScoreConductorFragment(HashMap<String, String> mp) {
		super();
		this.mp = mp;
	} 
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		View rootView = inflater.inflate(R.layout.final_score_conductor_fragment,
				container, false);
		client_scores_list = (ListView)  rootView.findViewById(R.id.client_scores_list);
		client_scores_list1 = new ArrayList<>();
		// read the hash map and display it in list
		Iterator<Entry<String, String>> it = mp.entrySet().iterator();
	    while (it.hasNext()) {
	        Map.Entry<String, String> pairs = (Map.Entry<String, String>)it.next();
	        client_scores_list1.add(pairs.getKey() + " : " + pairs.getValue());
	        Log.d("score", pairs.getKey() + " : " + pairs.getValue());
	        it.remove(); 
	    }
	    
	    ArrayAdapter<String> adapter = new ArrayAdapter<String>(getActivity(), android.R.layout.simple_list_item_1, client_scores_list1);
	    client_scores_list.setAdapter(adapter);
		
		return rootView;
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
			fragmentTransaction.remove(FinalScoreConductorFragment.this);
			fragmentTransaction.addToBackStack(null);
			fragmentTransaction.replace(android.R.id.content, placeholderFragment);
			fragmentTransaction.commit();
	        return true;
	    }
	    return super.onOptionsItemSelected(item);
	}

}
