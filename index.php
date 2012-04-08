<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <?php
            include_once 'Import.php';
            $import = new Import();
            $import->extractVoters();
        ?>
    </body>
</html>
