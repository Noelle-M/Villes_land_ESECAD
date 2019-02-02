<?php
session_start();

require('includes/inc_header.php');
require('includes/inc_connect.php');

$nom_ville = $_POST['nom_ville'];
$id_user = $_POST['id_user'];

//req dans ville
$query=$db->prepare('SELECT ville_nom, ville_id FROM villes ');
$query->execute();

while($data=$query->fetch())
{
	//si la ville existe
	if($data['ville_nom'] == $nom_ville)
	{
		//recuperation id
		$id_ville=$data['ville_id'];
	}
}

if(!empty($id_ville))
{
	//insert id_ville et id_user dans user_search
	$query=$db->prepare('INSERT INTO user_search (id_user, id_ville) VALUES (:id_user, :id_ville)');
	$query->bindValue(':id_user', $id_user, PDO::PARAM_INT);
	$query->bindValue(':id_ville', $id_ville, PDO::PARAM_INT);
	$query->execute();
	//redirection vers ville.php?id_ville='.ville_id.'
	echo'<meta http-equiv="refresh" content="0.5;URL=index.php?id_user='.$id_user.'&id_ville='.$id_ville.'">';
}
else
{
	echo'
	<div class="card-50 card">
		<p>Cette ville n\'est pas encore présente dans la base de donnée';
		//redirection vers index
		echo'<meta http-equiv="refresh" content="4;URL=index.php?id_user='.$id_user.'&id_ville=0">
		<p>Redirection automatique dans 3 secondes...</p>
	</div>';
}



require('includes/inc_footer.php');