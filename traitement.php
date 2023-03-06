<?php
if (isset($_POST['message'])) {
    $retour = mail($_POST['email'], 'Envoi depuis page Contact', $message, $entete);
    if($retour){
        echo '<p>Votre message a bien été envoyé.</p>';
    }
}
?>