<?php
require 'vendor/autoload.php';

$templates = new League\Plates\Engine('templates', 'tpl');
$input1 = '';
$input2 = '';
$result = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $input1 = $_POST['input1'];
    $input2 = $_POST['input2'];

    if (isValidDNAString($input1) && isValidDNAString($input2)) {
        $result = calculateHammingDistance($input1, $input2);
    } else {
        $result = 'Errore! Le tettere da inserire sono: "C", "A", "G", oppure "T".';
    }
}

echo $templates->render('hamming', [
    'input1' => $input1,
    'input2' => $input2,
    'result' => $result,
]);

function isValidDNAString($str) {
    return preg_match('/^[CAGT]+$/', $str);
}

function calculateHammingDistance($str1, $str2) {
    $length = strlen($str1);
    $distance = 0;
    for ($i = 0; $i < $length; $i++) {
        if ($str1[$i] !== $str2[$i]) {
            $distance++;
        }
    }

    return $distance;
}
