<?php
require 'vendor/autoload.php';
$template = new League\Plates\Engine('templates', 'tpl');
$risultato = null;
$operazioni = [
    'Quadrato' => "quadrato",
    'Cubo' => "cubo",
    'Radice quadrata' => "radice_quadrata",
];
$operazioni_form = [
    'Quadrato',
    'Cubo',
    'Radice quadrata'
];

$numeri = null;
$numeri_vettore = null;
$operazione_scelta = null;
$operazione = null;
$risultato_finale = "";

if (isset($_POST['numeri']) && isset($_POST['operazione']) ) {
    $numeri = $_POST['numeri'];
    $numeri_vettore = explode(",", $numeri);
    $operazione = $operazioni[$_POST['operazione']];
    $nuovo_vettore = array();
    $j = 0;

        if (isset($_POST['numeriPari'])) {
        for ($i = 0; $i < sizeof($numeri_vettore); $i++){
            if ($numeri_vettore[$i] % 2 == 0){
                $nuovo_vettore[$j] = $numeri_vettore[$i];
                $j ++;
            }
        }
    }
    else if (isset($_POST['numeriDispari'])){
        for ($i = 0; $i < sizeof($numeri_vettore); $i++){
            if ($numeri_vettore[$i] % 2 == 1){
                $nuovo_vettore[$j] = $numeri_vettore[$i];
                $j ++;
            }
        }
    }
    else if (isset($_POST['tuttiNumeri'])){
        $nuovo_vettore = $numeri_vettore;
    }
    if ($operazione == "quadrato") {
        for ($i = 0; $i < sizeof($nuovo_vettore); $i++) {
            $risultato_finale .= ($nuovo_vettore[$i] * $nuovo_vettore[$i]) . " ";
        }
    } else if ($operazione == "cubo") {
        for ($i = 0; $i < sizeof($nuovo_vettore); $i++) {
            $risultato_finale .= ( ($nuovo_vettore[$i] * $nuovo_vettore[$i] * $nuovo_vettore[$i]  . " ") );
        }
    } else {
        for ($i = 0; $i < sizeof($nuovo_vettore); $i++) {
            $risultato_finale .= (sqrt($nuovo_vettore[$i])  . " ");
        }
    }
}

echo $template -> render('accumulate', [
   'risultato' => $risultato_finale,
    'numeri' => $numeri,
    'operazione' => $operazioni_form
]);