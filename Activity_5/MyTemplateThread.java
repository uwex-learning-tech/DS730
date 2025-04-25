import java.util.*;

public class MyTemplateThread extends Thread{
	
	//Create any variables that are being passed from the Runner to 
	//the thread. These variables will be used in the run method below.
	//From the RunnerTemplate, we passed in a boolean and an int.
	//private boolean someBoolean = false;
	//private boolean someInt = 0;
	
	//Create a constructor to match what the Runner is sending. If the Runner
	//is sending a boolean and an int, then create such a constructor here.
	//public MyTemplateThread(boolean b, int i){
	//	someBoolean = b;
	//	someInt = i;
	//}
	
	public void run(){
		//This is where all the work is done in the thread. Use the someBoolean 
		//and someInt from above to do something.
		//Maybe this method prints out an answer, maybe it saves information to 
		//a file... it can do just about anything.


		//If the thread needs to communicate back to the Runner, it uses the synchronized
		//method that is created in the Runner class. In our template, this method is 
		//called communicateBackToRunner and an int and a String are passed in. Therefore,
		//we can call the method here using the following statement:
		//RunnerTemplate.communicateBackToRunner(730, "DS");
		//We can communicate back with the Runner from here as many times as we want.
	}
}
