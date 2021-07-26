<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <link rel="stylesheet" type="text/css" href="css/main_menu.css" />
    <link rel="stylesheet" type="text/css" href="css/carica.css" />
<title>Protocolli</title>
</head>
<body>
<nav style=" padding: 0 3em;" class=" menu navbar navbar-expand-sm justify-content-end fixed-top ">

    <div style=" margin-right: auto;">
        
            
    </div>
    <ul class="navbar-nav ">
        <li class="nav-item">
            <a class="nav-link" href="home.jsp">Home</a>
        </li>
    </ul>
</nav>
<h1>PROTOCOLLI</h1>

<form action="AddProtocollo" >
<input type="hidden" name="action" value="insert">
<fieldset>
   
   <label for="titolo"><b>TITOLO:</b></label><br>
   <input type="text" size="40" name="titolo" required><br><br>
   <label for="autore"><b>AUTORE:</b></label><br>
   <input type="text" size="40" name="autore" required><br><br>
  
   
   <a class="buttonOne" type="button" href="home.jsp">ANNULLA</a>
   <a class="buttonTwo" type="button" href="conferma.jsp">CONFERMA</a>
 </fieldset>
  
 <div class="signup-group">
	 		
	 		<label for="fileupload" >ALLEGA FILE:</label><br>
	 		<input type="file" name="file" size="40" required>
	 	</div> 
  
</form>

</body>
</html>