<?php
 $message = $_POST['message'];
 $result = mail("m.balazs@bristol.ac.uk","Sent via form.",$message,"");
 if(!$result) {   
       header("Location: form_nogood.html");
 } else {
       header("Location: form_thanks.html");
 }
?>
