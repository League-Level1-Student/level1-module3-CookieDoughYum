package netflix;

import javax.swing.JOptionPane;

public class Netflix {
public static void main(String[] args) {
	Movie m=new Movie("TheAmazingAdventuresOfBob", 3);
	m.getTicketPrice();
	Movie m1=new Movie("Superman", 4);
	Movie m2=new Movie("HarryPotter", 5);
	Movie m3=new Movie("Boo", 1);
	Movie m4=new Movie("TheCityOfDoom", 3);
	NetflixQueue q1=new NetflixQueue();
	q1.addMovie(m);
	q1.addMovie(m1);
	q1.addMovie(m2);
	q1.addMovie(m3);
	q1.addMovie(m4);
	q1.printMovies();
	q1.sortMoviesByRating();
	if(q1.getBestMovie()==m) {
		JOptionPane.showMessageDialog(null, "The best movie is The Amazing Adventures Of Bob!");
	}
	if(q1.getBestMovie()==m1) {
		JOptionPane.showMessageDialog(null, "The best movie is Superman!");
	}
	if(q1.getBestMovie()==m2) {
		JOptionPane.showMessageDialog(null, "The best movie is Harry Potter!");
	}
	if(q1.getBestMovie()==m3) {
		JOptionPane.showMessageDialog(null, "The best movie is Boo!");
	}
	if(q1.getBestMovie()==m4) {
		JOptionPane.showMessageDialog(null, "The best movie is The City Of Doom!");
	}
	
	if(q1.getSecondBestMovie()==m) {
		JOptionPane.showMessageDialog(null, "The second best movie is The Amazing Adventures Of Bob!");
	}
	if(q1.getSecondBestMovie()==m1) {
		JOptionPane.showMessageDialog(null, "The second best movie is Superman!");
	}
	if(q1.getSecondBestMovie()==m2) {
		JOptionPane.showMessageDialog(null, "The second best movie is Harry Potter!");
	}
	if(q1.getSecondBestMovie()==m3) {
		JOptionPane.showMessageDialog(null, "The second best movie is Boo!");
	}
	if(q1.getSecondBestMovie()==m4) {
		JOptionPane.showMessageDialog(null, "The second best movie is The City Of Doom!");
	}
	
	
}


}
