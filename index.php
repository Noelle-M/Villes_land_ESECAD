<?php
session_start();

require('includes/inc_header.php');
require('includes/inc_connect.php');

// on teste la déclaration de notre cookie
if (isset($_COOKIE['id'])) {
	echo '<h1>Salutation '.$_COOKIE['prenom'].' !</h1>';
	echo '<p><a href="logout.php">Se déconnecter</a></p>';
}
else 
{
	echo '<h1>Bienvenu à Villes-Land !</h1><br />';
	echo '<div class="card card-50">Pour pouvoir accéder aux recherches, merci de saisir ton prénom';

	// si le cookie n'existe pas, on affiche un formulaire permettant au visiteur de saisir son nom
	echo '<form action="traitementCookie.php" method="post">';
	echo '<input type = "text" name = "prenom"><br /><br/>';
	echo '<input type = "submit" value = "Envoyer"></div>';
}
?>
	<hr>
<?php
if (isset($_COOKIE['id'])) 
{
	$id_user=$_GET['id_user'];
	echo
	'<div class="row">
		<div class="col">
			<div class="card px-5 pt-5 pb-5 text-align-center">
				<h4 class="text-success">Quelle ville souhaites-tu voir ?</a></h4>
					<form class="form" method="post" action="traitementVille.php">
						<input type="text" name="nom_ville" /><br/>
						<input type="hidden" name="id_user" value="'.$id_user.'" />
						<input class="btn btn-outline-success mt-2 ml-5 mb-5" type="submit" value="Ajouter">
					</form>						
				</div>
		</div>

		<div class="col">
			<div class="card px-5 pt-5 pb-5 text-align-center">';

			$query=$db->prepare('SELECT prenom_user, id_user FROM users
			WHERE id_user=:id_user');
			$query->bindValue(':id_user', $id_user, PDO::PARAM_INT);
			$query->execute();
			$data=$query->fetch();
			$prenom = $data['prenom_user'];

			$query=$db->prepare('SELECT count(id_user) FROM user_search
				WHERE id_user=:id');
			$query->bindValue(':id', $_COOKIE['id'], PDO::PARAM_INT);
			$query->execute();
			$data=$query->fetch();
			$nbr=$data[0];

			if($nbr > 0 && $id_user == $_COOKIE['id'])
			{
				$query=$db->prepare('SELECT distinct(id_ville), ville_nom
					FROM user_search 
					INNER JOIN villes ON user_search.id_ville = villes.ville_id
					WHERE id_user=:id');
				$query->bindValue(':id', $_COOKIE['id'], PDO::PARAM_INT);
				$query->execute();

				echo'<p> Voici la liste de ta recherche '.$prenom.', clique sur le nom de la ville pour voir le détail</p><br/>';

				while($data=$query->fetch())
				{
					$ville = $data['ville_nom'];
					$ville_id = $data['id_ville'];

					echo'<p><a href="ville.php?ville_id='.$ville_id.'">'.$ville.'</p>';
				}
			}	
			else
			{
				echo '<h3>Tu n\'as encore choisi aucune ville !</h3>';
			}

			echo'</div>
		</div>
	</div>';
}
	
require('includes/inc_footer.php');
