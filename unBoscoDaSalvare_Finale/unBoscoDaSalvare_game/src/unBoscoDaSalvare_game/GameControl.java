package unBoscoDaSalvare_game;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

/**
 * Servlet implementation class GameControl
 */
@WebServlet("/GameControl")
public class GameControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    HttpSession session;
    List<user> users=new ArrayList<user>();
    String url="";
   
    	
    boolean aggiunto;
    public GameControl() {
        super();
        user u1= new user("amico12", 15,0);
        user u2=new user("Marco_Campo", 35,0);
        user u3= new user("Elisa98", 45,0);
        user u4=new user("CuoricinoVerde", 10,0 );
        user u5=new user("Luca", 50,0);
        user u6=new user("NaturaLover", 30,0);
        user u7=new user("GretaT", 65,0);
      
        users.add(u1);
        users.add(u2); 
        users.add(u3);
        users.add(u4);
        users.add(u5);
        users.add(u6);
        users.add(u7);
        Collections.sort(users, new Ordinamento());
        
        aggiunto=false;
    }

	
	protected synchronized void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action = request.getParameter("action"); 
		try {
			if(action.equalsIgnoreCase("addUser") && action!=null && !aggiunto) {
				
					String nickname= request.getParameter("nickname");	
					user newUser = new user(nickname, 0, 1);
					users.add(newUser);
					aggiunto=true;
					//ordino lista
					Collections.sort(users, new Ordinamento());
					
					request.getSession().setAttribute("user", nickname );
					request.getSession().setAttribute("logged", true);
				
					
				
				
				
				url = "HomeGame.jsp";
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/"+ url);
				dispatcher.forward(request, response);
			}
			else if(action.equalsIgnoreCase("updatePoints") && action!=null) {
				String gamer= (String) request.getSession().getAttribute("user");
				String vero= request.getParameter("vero");
				//if(!vero.equalsIgnoreCase("1")) {
					for(user u: users) {
						 
							if(gamer.equalsIgnoreCase(u.getNickname())) {
								int punti=u.getPoints();
								punti+=5;
								
								users.remove(u);
								
								user newUser = new user(gamer, punti, 1);
								users.add(newUser);
								aggiunto=true;
								//ordino lista
								Collections.sort(users, new Ordinamento());
								
							}
						
					}
				//}
				url = "HomeGame.jsp";
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/"+ url);
				dispatcher.forward(request, response);
			}
			else if( action!=null && action.equalsIgnoreCase("classifica")) 
			{
				
				
				users usersList=new users();
				usersList.setList(users);
			
				
				
				String json = new Gson().toJson(usersList);

				response.setContentType("application/json");
			    response.setCharacterEncoding("UTF-8");
			    response.getWriter().write(json);
			   
				
			    
		}
			else {
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/"+ url);
				dispatcher.forward(request, response);
			}
	}
	catch(Exception e){
			System.out.println("ERRORE: GameControl "+e);

		}
		
		/*
		// Dispatcher verso la nuova pagina web
		*/
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
