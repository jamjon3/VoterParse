<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <?php
            include_once 'Import.php';
            include_once 'Services.php';
            $service = new Services();
            // Merge the POST and GET vars and run the services
            $service->invokeService(array_merge($_GET, $_POST));
            
            $import = new Import();
            $import->extractVoters();
        ?>
    </body>
</html>
