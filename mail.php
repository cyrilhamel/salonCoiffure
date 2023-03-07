
<?php
$retour = mail('contact.coiffhomme@gmail.com', 'Envoi depuis la page Contact', $_POST['message'], 'From: xizor64@gmail.com');
if ($retour)
    echo '<p>Votre message a bien été envoyé.</p>';
?>
