import java.util.*;

public class RunnerTemplate{

	//Declare any variables here that you need to aggregate any information
	//that is sent back from the threads. The totalInCircle was such a variable
	//from the presentation, for example. In the sample below, a String and 
	//an int is declared. Such variables must be defined to be static variables 
	//since they are beind accessed from a static method. The reasoning is beyond
	//the scope of this course. Just be sure to start your variables up here 
	//with private static...
	//private static int someInteger = 0;
	//private static String someString = "";

	//Create any synchronized methods here for the threads to communicate back to 
	//the runner class. The addCircle was such a method in the presentation. In 
	//the sample method below, an int and a String is passed back. 
	//Maybe the method is keeping track of the largest value and the string associated 
	//with that value.
	//public synchronized static void communicateBackToRunner(int val, String something){
	//	if(val > someInteger){
	//    someInteger = val;
	//    someString = something;
	//  }
	//}

	public static void main(String args[]){
		//Start your timing here.
		long start = System.currentTimeMillis();

		//Since we have 8 cores on our EC2 instance, it is reasonable to split
		//up the work 8 ways. If there is a more natural split than 8, then 
		//change the 8 number below to whatever is most natural.
		int numWorkers = 8;
		MyTemplateThread[] workers = new MyTemplateThread[numWorkers];
		for(int i=0; i<numWorkers; i++){
			//Create a new thread and start it.
			//This is where you pass information to the Thread for it 
			//to use. In the sample below, a boolean and an int are passed in:
			//workers[i] = new MyTemplateThread(true, i);
			workers[i] = new MyTemplateThread();  //add any arguments between ( )
			workers[i].start();
		}
		
		//Make sure the workers are finished before the Runner finishes.
		for(int i=0; i<workers.length; i++){
			//If the worker thread is already done, this will just continue on to the next thread.
			try{
				workers[i].join();
			} catch(Exception e){
				System.out.println("Something went wrong with worker thread "+i+".");
			}
		}

		//All threads are finished working, now do something with the answer. Maybe print it out?
		//System.out.println("Best integer was " + someInteger + " and it was from " + someString);	

		//Print out how long it took.
		long end = System.currentTimeMillis();
		System.out.println("Time taken: "+(end-start));
	}
}
