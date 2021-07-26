package unBoscoDaSalvare_game;

import java.util.Comparator;

public class Ordinamento implements Comparator<user> {

	public int compare (user u1, user u2) {
		if(u1.getPoints()>u2.getPoints()) {
			return -1;
		}
		else if(u1.getPoints()<u2.getPoints()) {			
			return 1;
		}
		
		return 0;
	}
}
