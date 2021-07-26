package unBoscoDaSalvare_game;

import java.util.ArrayList;
import java.util.List;

public class users {
	private List<user> users=new ArrayList<user>();
	
	public users() {
		
	}
	
	public void setList(List<user> list) {
		users=list;
	}
	public List<user> getList(){
		return users;
	}
}
