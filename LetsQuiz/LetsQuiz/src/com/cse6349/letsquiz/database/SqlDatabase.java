package com.cse6349.letsquiz.database;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

public class SqlDatabase extends SQLiteOpenHelper {

	public static final String DATABASE_NAME = "db";	
	public static final String TABLE_NAME = "question_table";
	public static final String QUESTION = "question";
	public static final String CATEGORY = "category";
	public static final String OPTION1 = "opt1";
	public static final String OPTION2 = "opt2";
	public static final String OPTION3 = "opt3";
	public static final String OPTION4 = "opt4";
	public static final String ANSWER = "ans";

	private final String createdb = "create table if not exists " + TABLE_NAME + " ( "
		+ CATEGORY + " text, "
		+ QUESTION + " text, "
		+ OPTION1 + " text, "
		+ OPTION2 + " text, "
		+ OPTION3 + " text, "
		+ OPTION4 + " text, "
		+ ANSWER + " text);";
		
		
		public SqlDatabase(Context context) {
			super(context, DATABASE_NAME, null, 1);
			// TODO Auto-generated constructor stub
		}

		@Override
		public void onCreate(SQLiteDatabase db) {
			// TODO Auto-generated method stub
			db.execSQL(createdb);
		}

		@Override
		public void onUpgrade(SQLiteDatabase db, int arg1, int arg2) {
			// TODO Auto-generated method stub
			db.execSQL("drop table "+TABLE_NAME);
		}

}
