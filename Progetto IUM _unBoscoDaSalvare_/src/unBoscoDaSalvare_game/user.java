package unBoscoDaSalvare_game;

public class user {

	private String nickname;
	private int points;
	private int myAccount;
	
	//getter e setter
	
	public String getNickname() {
		return nickname;

	}
	
	public int getPoints() {
		return points;
	}
	
	public void setNickname(String name) {
		nickname=name;
	}
	
	public void setPints(int n) {
		points=n;
	}
	//constructor
	public user(String name, int points, int i) {
		nickname=name;
		this.points=points;
		myAccount=i;
	}
	
	//add points 
	public void addPoints(int p) {
		points+=p;
	}
}
