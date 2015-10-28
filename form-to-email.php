<?php 
require 'vendor/autoload.php';
$sendgrid = new SendGrid('YOUR_SENDGRID_USERNAME', 'YOUR_SENDGRID_PASSWORD');

$message = new SendGrid\Email();
$message->addTo('foo@bar.com')->
          setFrom('me@bar.com')->
          setSubject('Subject goes here')->
          setText('Hello World!')->
          setHtml('<strong>Hello World!</strong>');
$response = $sendgrid->send($message);
?>
 
