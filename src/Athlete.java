
public class Athlete {
	 static int nextBibNumber;
	    static String raceLocation = "New York";
	    static String raceStartTime = "9.00am";

	    String name;
	    int speed;
	    int bibNumber;
	    

	Athlete (String name, int speed){
	    this.name = name;
	    this.speed = speed;
	    nextBibNumber++;
	    bibNumber=nextBibNumber;
	    System.out.println(name + " who is number " + bibNumber + " is racing in " + raceLocation);
	}

	public static void main(String[] args) {
	    //create two athletes      //print their names, bibNumbers, and the location of their race. }
		Athlete Joe=new Athlete("Joe", 20);
		Athlete Bob=new Athlete("Bob", 17);	
}
}
