<?php
session_start();
session_destroy();
unset($_SESSION['prenom']);
setcookie('prenom', FALSE);
setcookie('id', FALSE);

require('includes/inc_header.php');

?>
<div class="card card-50">
	<h1>Tu es déconnecté(e) ! </h1>
	<p>Tous les <img src="images/cookie.gif" alt="coocki" title="Coockie"> ont été supprimés</p>
	<a href="index.php">Me connecter / Retour accueil</a>
</div>
<?php

require('includes/inc_footer.php');
	
