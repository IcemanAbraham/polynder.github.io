<?php 
session_start();
$host_name = 'db766961535.hosting-data.io';
$database = 'db766961535';
$user_name = 'dbo766961535';
$password = 'Azerty234!';






$bdd = null;
try {
  $bdd = new PDO("mysql:host=$host_name; dbname=$database;", $user_name, $password);
} catch (PDOException $e) {
  echo "Erreur!: " . $e->getMessage() . "<br/>";
  die();
}
//Attribution des variables de session
$id=(isset($_GET['idfb']))?(int) $_GET['idfb']:0;
$imdp=(isset($_GET['mdp']))?(int) $_GET['mdp']:0;
$mail=(isset($_GET['mailfb']))?$_GET['mailfb']:'';
$prenom=(isset($_GET['prenom']))?$_GET['prenom']:'';

//On inclue les 2 pages restantes
include("membres.php");

        $nbArticles=count($_SESSION['panier']['libelleProduit']);


function utilisateur_est_connecte() {
 
	return !empty($_SESSION['id']);
}


    

?>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Polynder</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
        <link href="signin.css" rel="stylesheet">

    
  </head>

  <body class="text-center">
    <form class="form-signin">
      <img class="mb-4" src="popo.png" alt="" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-normal">Connectez-vous</h1>
      <label for="inputEmail" class="sr-only">adresse mail</label>
      <input type="email" id="inputEmail" class="form-control" placeholder="adresse mail" required autofocus>
      <label for="inputPassword" class="sr-only">Mot de passe</label>
      <input type="password" id="inputPassword" class="form-control" placeholder="mdp" required>
      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me"> Se souvenir de moi
        </label>
      </div>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Connexion</button>
      <p class="mt-5 mb-3 text-muted"> Polytech 2019-2020</p>
            <p class="mt-5 mb-3 text-muted"><a> Inscription</a></p>
 <?php
	  
//On reprend la suite du code
	if (!isset($_POST['mail']) ){} //On est dans la page de formulaire
    
     
       
        
	else
	{
		$message='';
		if ((empty($_POST['mail']) || empty($_POST['mdp']))  ) //Oubli d'un champ
		{
			$message = '<p>une erreur s\'est produite pendant votre identification.
		Vous devez remplir tous les champs</p>
		<p>Cliquez <a href="connect.php">ici</a> pour revenir</p>';
		}
        
		else //On check le mot de passe
		{
			$query=$bdd->prepare('SELECT mdp, id, mail, nom, prenom
			FROM client WHERE mail = :mail');
			$query->bindValue(':mail',$_POST['mail'], PDO::PARAM_STR);
			$query->execute();
			$data=$query->fetch();
            
		if ($data['mdp'] == $_POST['mdp'] ) // Acces OK !
		{
			$_SESSION['mail'] = $data['mail'];
			$_SESSION['id'] = $data['id'];
          	$_SESSION['prenom'] = $data['prenom'];
				header("Location:https://www.walabok.me/index.php");
                exit();
		}
        
            
       
		
		else // Acces pas OK !
		{
			$message = ' <p>Le mot de passe ou le pseudo 
				entré est incorrect.</p>';
		}
		$query->CloseCursor();
		}
		echo $message.'</div>';
	
      
	}
?>
    </form>
  </body>
</html>
