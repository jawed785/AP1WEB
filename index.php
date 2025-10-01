<?php
include '_conf.php';

?>

<?php

if ($bdd = mysqli_connect($serveurBDD, $userBDD, $mdpBDD, $nomBDD))
{

    //SI la connexion a réussi
    echo "connexion BDD réussi !";

}
else //MAis si elle rate...

{
    echo 'Erreur'; //on affiche un message d'erreur
}

?> 


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <br>
    <title>Page de connexion:</title>
    <br>
    <label>Login:</label>
    <input type="text" name="login" required>
    <br>
    <label>Mot de passe:</label>
    <input type="password" name="motdepasse" required>
    <br>
    <button type="Submit">Confirmer</button>
    <a href="oubli.php"> Mdp Oublié ?</a>
</head>
<body>
    
</body>
</html>


