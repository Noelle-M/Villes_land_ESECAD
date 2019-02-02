<?php
session_start();

require('includes/inc_header.php');
require('includes/inc_connect.php');

If (isset($_POST['prenom']))
{
	$prenom=$_POST['prenom'];
	//insert into users prenom et recupérer l'id
	$query=$db->prepare('INSERT INTO users (prenom_user ) VALUES (:prenom)');
    $query->bindValue(':prenom', $prenom, PDO::PARAM_STR);
    $query->execute();
}
else 
{
	echo 'Tu n\'as pas saisi ton prénom';
}

	$query=$db->prepare('SELECT id_user FROM users WHERE prenom_user=:prenom');
	$query->bindValue(':prenom', $prenom, PDO::PARAM_STR);
	$query->execute();
	$data=$query->fetch();
	$id_user = $data['id_user'];

	//setcookie ("id", id récuperé
	$temps = 365*24*3600;
	setcookie ("id", $id_user, time() + $temps);
	setcookie ("prenom", $_POST['prenom'], time() + $temps);

	echo '<h1>Bienvenu à Villes-Land !</h1><br />';
	echo '<div class="card card-50"><p>Bonjour '.$prenom;

	echo'<br/>Patience tu vas être redirigé(e) automatiquement...<br/>
	<i> <a href="index.php?id_user='.$id_user.'">Si ce n\'est pas le cas, RDV ici >> </a></i>
	<br/> Amuses-toi bien !</p></card>';
	echo'<meta http-equiv="refresh" content="3;URL=index.php?id_user='.$id_user.'">';


require('includes/inc_footer.php');
?>

