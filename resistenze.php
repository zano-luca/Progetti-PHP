<?php
require 'vendor/autoload.php';
$template = new League\Plates\Engine('templates', 'tpl');

$colori = [
    'Black',
    'Brown',
    'Red',
    'Orange',
    'Yellow',
    'Green',
    'Blue',
    'Violet',
    'Grey',
    'White'
];
$valore_colore = [
    'Black' => 0,
    'Brown' => 1,
    'Red' => 2,
    'Orange' => 3,
    'Yellow' => 4,
    'Green' => 5,
    'Blue' => 6,
    'Violet' => 7,
    'Grey' => 8,
    'White' => 9
];
$moltiplicatore = [
    'Black',
    'Brown',
    'Red',
    'Orange',
    'Yellow',
    'Green',
    'Blue',
    'Violet',
    'Grey',
    'White',
    'Gold',
    'Silver'
];
$valore_moltiplicatore = [
    'Black' => 1,
    'Brown' => 10,
    'Red' => 100,
    'Orange' => 1000,
    'Yellow' => 10000,
    'Green' => 100000,
    'Blue' => 1000000,
    'Violet' => 10000000,
    'Grey' => 100000000,
    'White' => 1000000000,
    'Gold' => 0.1,
    'Silver' => 0.01
];
$tolleranza = [
    'Brown',
    'Red',
    'Green',
    'Blue',
    'Violet',
    'Grey',
    'Gold',
    'Silver'
];
$valore_tolleranza = [
    'Brown' => 1,
    'Red' => 2,
    'Green' => 0.5,
    'Blue' => 0.25,
    'Violet' => 0.1,
    'Grey' => 0.05,
    'Gold' => 5,
    'Silver' => 0
];

$primo_valore = null;
$secondo_valore = null;
$terzo_valore = null;
$quarto_valore = null;
$risultato = null;

if ( isset($_POST['primo_colore'])  && isset($_POST['secondo_colore'])  &&  isset($_POST['terzo_colore'])  &&  isset($_POST['quarto_colore'])  ){
    $primo_valore = $valore_colore[$_POST['primo_colore']];
    $secondo_valore = $valore_colore[$_POST['secondo_colore']];
    $terzo_valore = $valore_moltiplicatore[$_POST['terzo_colore']];
    $quarto_valore = $valore_tolleranza[$_POST['quarto_colore']];
    $risultato = (($primo_valore * 10) + $secondo_valore) * $terzo_valore;
}

echo $template -> render('resistenze', [
   'risultato' => $risultato,
    'colori' => $colori,
    'moltiplicatore' => $moltiplicatore,
    'tolleranza' => $tolleranza,
    'tolleranza_valore' => $quarto_valore

]);