<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <link rel="stylesheet" type="text/css" href="css/main_menu.css" />
    <title>LOGIN</title>

    
</head>
<body>
<h1>LOGIN</h1>

<a href="index.html"><img class="exit" src="Icone_ed_elementi_grafici/close rosso.png" width="28" height="28"></a>


<div class=" container-fluid form">
 <form action="AddUtente" method="POST">
     <div class="container">
     <label for="username"><b>E-MAIL</b></label><br>
     <input type="text" name="username" placeholder="E-mail" required><br>
     
     <label for="password"><b>PASSWORD</b></label><br>
     <input type="password" name="password" placeholder ="Password" required>
     <a class="buttonLog" type="buttonLog" href="home.jsp">ACCEDI</a>
     
     <input type="hidden" name="action" value="login">
     </div>
    
    
   </form>
</div>
</body>


</html>
