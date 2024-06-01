<!doctype html>
<html lang="en" style="background-color: aliceblue">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Accumulate</title>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@3.9.4/dist/full.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.1.1/flowbite.min.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.1.1/flowbite.min.js"></script>


    <style>
        li{
            border: solid black 2px;
            border-radius: 10px;
            padding: 8px;
        }

        h1{
            font-size: 40px;
            color: black;
            margin: 10px;
        }
        body{
            margin: 10px;
            text-align: center;
            justify-items: center;
        }
        input[type="checkbox"]{
            margin-left: 10px;
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



<br>
<br>
<h1 style="font-size: 40px;">Esegui un'operazione:</h1>
<br>
<br>
<form action="" method="post">
    <input class="input input-bordered w-full max-w-xs" type="text" name="numeri" placeholder="Inserisci numeri separati dalla virgola:" value=<?=$numeri?> >
    <br>
    <br>
    <select class="select select-warning w-full max-w-xs" name="operazione" value= "<?=$operazione_scelta?>" >
        <option disabled selected>Scegli operazione</option>
        <?php foreach ($operazione as $operazioni): ?>
        <option><?= $operazioni ?></option>
        <?php endforeach; ?>
    </select>
    <br>
    <br>
    <br>
    <input type="checkbox" name="numeriPari" class="checkbox"> Numeri pari
    <input type="checkbox" name="numeriDispari" class="checkbox"> Numeri dispari
    <input type="checkbox" name="tuttiNumeri" class="checkbox" checked > Tutti i numeri

    <br><br><br>

    <button   class="inline-block cursor-pointer rounded-md bg-gray-800 px-4 py-3 text-center text-sm font-semibold uppercase text-white transition duration-200 ease-in-out hover:bg-gray-900"
    type="submit">Calcola</button>

    <br><br><br>
</form>

<h1 style="font-size: 40px;"> <?=$risultato?> </h1>
</body>
</html>