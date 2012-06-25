<?php
include_once 'County.php';
$county = new County();
?>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <?php
        // put your code here
        foreach ($county->getCounties(TRUE) as $row) {
            print_r($row->code." - ".$county->safeDBNames($row->name)."\n");
        }
        // print_r($county->getCounties());
        ?>
    </body>
</html>
