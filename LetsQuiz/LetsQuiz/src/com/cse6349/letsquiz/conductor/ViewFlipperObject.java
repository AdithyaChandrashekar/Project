package com.cse6349.letsquiz.conductor;

public class ViewFlipperObject {
	
	String question;
	String opt1;
	String opt2;
	String opt3;
	String opt4;
	String correct_answer;
	
	public ViewFlipperObject(String question, String opt1, String opt2,
			String opt3, String opt4, String correct_answer) {
		super();
		this.question = question;
		this.opt1 = opt1;
		this.opt2 = opt2;
		this.opt3 = opt3;
		this.opt4 = opt4;
		this.correct_answer = correct_answer;
	}

	public String getQuestion() {
		return question;
	}

	public String getOpt1() {
		return opt1;
	}

	public String getOpt2() {
		return opt2;
	}

	public String getOpt3() {
		return opt3;
	}

	public String getOpt4() {
		return opt4;
	}

	public String getCorrect_answer() {
		return correct_answer;
	}
	
	
	
	

}