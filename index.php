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
            $import->extractVoters("TestVoters.txt");
            
//            include_once 'Connection.php';
//            include_once 'Parser.php';
//            $parser = new Parser();
//            $handle = @fopen("TestVoters.txt", "r");
//            if ($handle) {
//                while (($buffer = fgets($handle, 4096)) !== false) {
//                    $parser->parse($buffer);
//                }
//                if (!feof($handle)) {
//                    echo "Error: unexpected fgets() fail\n";
//                }
//                fclose($handle);
//            }
        ?>
    </body>
</html>
