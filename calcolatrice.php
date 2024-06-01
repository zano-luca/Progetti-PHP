<?php
require 'vendor/autoload.php';
$template = new League\Plates\Engine('templates', 'tpl');

$a = null;
$b = null;
$risultato = null;

if (isset($_POST['a']) ) {
    $a = $_POST['a'];
    $b = $_POST['b'];

    if (isset($_POST['moltiplicazione']))
        $risultato = $a * $b;
    else if (isset($_POST['divisione']))
        $risultato = $a / $b;
    else if (isset($_POST['addizione']))
        $risultato = $a + $b;
    else if (isset($_POST['sottrazione']))
        $risultato = $a - $b;

}

echo $template -> render('calcolatrice', [
   'risultato' => $risultato,
    'a' => $a,
    'b' => $b

]);