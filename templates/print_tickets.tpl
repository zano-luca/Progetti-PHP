<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bus ticket</title>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@3.9.4/dist/full.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.1.1/flowbite.min.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.1.1/flowbite.min.js"></script>


</head>
<body>
<h1>Biglietti acquistati!</h1>
<p>Il costo totale dei biglietti è <?=$costo_totale?></p>
<?php foreach ($tickets as $ticket):?>
<div>
    <h1><?=$ticket['nominativo']?></h1>
    <p><strong><?=$ticket['tipo']?> </strong></p>
    <p><strong>Zona</strong> <?=$ticket['zona']?></p>

    <p><strong>Costo</strong>: <?=$ticket['costo']?> €</p>
</div>
<hr>
<?php endforeach;?>
</form>
<a href="bus_ticket.php">Acquista altri biglietti</a>
</body>
</html>