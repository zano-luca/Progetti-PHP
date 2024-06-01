<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Calcolo resistenza</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.1.1/flowbite.min.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.1.1/flowbite.min.js"></script>



    <style>
        li{
            border: solid black 2px;
            border-radius: 10px;
            padding: 8px;
        }
        html{
            background-color: aquamarine;
        }
        body{
            justify-items: center;
            align-items: center;
            text-align: center;
        }

        button {
            color: white;
            padding: 16px 32px;
            text-align: center;
            font-size: 17px;
            margin-top: 25px;
            transition-duration: 0.4s;
            cursor: pointer;
            border-radius: 10px;
        }

        button:hover {
            background-color: blue;
            color: white;
        }

        select{
            margin: 10px;
            color: white;
            background-color: blue;
            font-size: 15px;
            height: 40px;
            width: 180px;
            border-radius: 20px;
            cursor: pointer;

        }
        nav{
            margin: 20px;
        }
    </style>
</head>
<body>


<nav class="bg-white border-gray-200 dark:bg-gray-900 dark:border-gray-700" style="border: black 2px solid; margin-bottom: 20px">
    <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
        <a href="#" class="flex items-center space-x-3 rtl:space-x-reverse">
            <img src="https://image.freepik.com/vettori-gratuito/icona-del-modello-di-lancio-del-razzo-spaziale_40073-15.jpg" style="width: 50px; height: 50px"  class="h-8" alt="Flowbite Logo" />
            <span onmouseover="this.style.color='blue'" onmouseout="this.style.color='#000'" class="self-center text-2xl font-semibold whitespace-nowrap dark:text-white">Home</span>
        </a>
        <button data-collapse-toggle="navbar-dropdown" type="button" class="inline-flex items-center p-2 w-10 h-10 justify-center text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600" aria-controls="navbar-dropdown" aria-expanded="false">
            <span class="sr-only">Open main menu</span>
            <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 17 14">
                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 1h15M1 7h15M1 13h15"/>
            </svg>
        </button>

        <div class="hidden w-full md:block md:w-auto" id="navbar-dropdown">
            <ul class="flex flex-col font-medium p-4 md:p-0 mt-4 border border-gray-100 rounded-lg bg-gray-50 md:space-x-8 rtl:space-x-reverse md:flex-row md:mt-0 md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700">
                <li>
                    <a href="calcolatrice.php" class="block py-2 px-3 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">Calcolatrice</a>
                </li>
                <li>
                    <a href="resistenze.php" class="block py-2 px-3 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">Resistenze</a>
                </li>
                <li>
                    <a href="hamming.php" class="block py-2 px-3 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">Hamming</a>
                </li>
                <li>
                    <a href="accumulate.php" class="block py-2 px-3 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">Accumulate</a>
                </li>
                <li>
                    <a href="bus_ticket.php" class="block py-2 px-3 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">Biglietti</a>
                </li>
            </ul>
        </div>
    </div>
</nav>


<h1>Calcolo valore di una resistenza:</h1>

<form action="" method="post">
    <select name="primo_colore">
        <option disabled selected>Primo colore</option>
        <?php foreach ($colori as $colore): ?>
        <option><?= $colore ?></option>
        <?php endforeach; ?>
    </select>

    <select name="secondo_colore">
        <option disabled selected>Secondo colore</option>
        <?php foreach ($colori as $colore): ?>
        <option><?= $colore ?></option>
        <?php endforeach; ?>
    </select>

    <select name="terzo_colore">
        <option disabled selected>Terzo colore</option>
        <?php foreach ($moltiplicatore as $colore): ?>
        <option><?= $colore ?></option>
        <?php endforeach; ?>
    </select>

    <select name="quarto_colore">
        <option disabled selected>Quarto colore</option>
        <?php foreach ($tolleranza as $colore): ?>
        <option><?= $colore ?></option>
        <?php endforeach; ?>
    </select>

    <br>
    <button style="background-color: blue" type="submit">Invia</button>
</form>

<br><br>
<h1>Il risultato è <?=$risultato?> ±<?=$tolleranza_valore?>% </h1>
<br><br>
</body>
</html>