<?php
 $message = $_POST['message'];
 $result = mail("m.balazs@bristol.ac.uk","prob116f webpage form",$message,"");
 if(!$result) {   
       header("Location: form_prob116f_nogood.html");
 } else {
       header("Location: form_prob116f_thanks.html");
 }
?>
