<?php
session_start();

require('includes/inc_header.php');
require('includes/inc_connect.php');

$id_ville=$_GET['ville_id'];

//req pour rechercher la ville par id
$query=$db->prepare('SELECT * FROM villes');
$query->execute();
while($data=$query->fetch())
{
	if($data['ville_id']== $id_ville)
	{
		echo
			'<div class="row">
				<div class="col-6">
					<div class="card px-5 pt-5 pb-5 text-align-center">
						<h4 class="text-success">'.$data['ville_nom'].'</a></h4>
							<p> '.$data['ville_text'].' </p>
							<p><a href="modif.php?id_ville='.$id_ville.'">Modifier</a></p>
						</div>
						
				</div>
				<div class="col-6">
					<div class="card px-5 pt-5 pb-5 text-align-center">
						<img src="images/'.$data['ville_id'].'.jpg">
						<br><a href="index.php?id_user='.$_COOKIE['id'].'&id_ville='.$id_ville.'">Retour Accueil</a>
						</div>
				</div>
			</div>';
	}
}



require('includes/inc_footer.php');