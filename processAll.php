<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
include_once 'Import.php';
$import = new Import();
$import->extractVoters();
$import->extractHistory();

?>
