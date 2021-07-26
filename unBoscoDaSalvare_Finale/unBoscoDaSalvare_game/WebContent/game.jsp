<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="unBoscoDaSalvare_game.*"%>    
<%
	Boolean isLogged =(Boolean) request.getSession().getAttribute("logged");
	if ( (isLogged == null) || !isLogged.booleanValue() )
	{
		 response.sendRedirect("./HomeGame.jsp");
		  return;
	}

%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>Gioca!</title>
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script>
		//all'inizio visualizzo solo domanda1
		$(document).ready(function(){
			$("#vero").hide();
			$("#falso").hide();
		});
		//se risp falso nascondo doamnda e mostro box falso
		function falso(){
			$("#domanda1").hide();
			$("#falso").show();
		}
		//se risp vero nascondo domanda e mostro box vero
		function vero(){
			$("#domanda1").hide();
			$("#vero").show();
		}
		
		function exit(){
			if(confirm("sei Sicuro di voler uscire dal gioco?")){
				window.location.href="HomeGame.jsp";
			}
		}
		</script>
		
		<style>
			.button{
				background-color: #97de3d;
				margin-bottom: 10px;
				width: 100%;
				border-radius: 5px;
			}
		
		</style>
	</head>
	<body style="margin: 5%;">
	
	<div style="display: inline;">
		<img width="30" height="30" src="Icone_ed_elementi_grafici/close%20verde.png" onclick="exit()" ><h1  style=" display: inline; color: #fabe2c;  margin-left: 50px;"> GIOCA E IMPARA</h1>
	</div>
	
	 <div  style="height: 20%; margin: auto; width: 50%;"><img width="150"  height="150" src="Icone_ed_elementi_grafici/tree group.png"/>
    
      </div>
      
		<div style=" margin: 5%;" id="domanda1">
			
			<p>Ti trovi in campagna per una passeggiata. Hai un fazzoletto di carta da gettare, come ti comporti?</p>
			<div >
				<button class="button" onclick="falso()">Lo getto dove capita</button><br>
				<button class="button" onclick="falso()">Cerco il primo mucchio di rifiuti e lo lascio lì</button><br>
				<button class="button" onclick="falso()">Lo lascio dove nessuno lo vede</button><br>
				<button class="button" onclick="vero()">Cerco il primo cestino, altrimenti lo metto in tasca</button>
				
			</div>
		</div>
		
		
		<div style=" margin: 5%;" id="vero">
		
			<h3 >Risposta esatta! Continua cosi.</h3>
			<p>La carta è un materiale facilmente infiammabile.
			A contatto con una fonte di calore (anche il sole nelle giornate estive) può provocare un principio di incendio. 
			</p>
			
			<h3 style="color: orange; margin: auto; width: 50%;"> + 5 PUNTI</h3>
			<a href="./GameControl?action=updatePoints&vero=1"><button class="button" >AVANTI</button></a>
			
		</div>
		
		<div style=" margin: 5%;" id="falso">
		
			<h3>Sbagliato! Leggi e scopri perchè</h3>
			<p>La carta è un materiale facilmente infiammabile.
			A contatto con una fonte di calore (anche il sole nelle giornate estive) può provocare un principio di incendio. 
			</p>
			
			<a href="./HomeGame.jsp"><button class="button">AVANTI</button></a>
		</div>
	</body>
	</html>