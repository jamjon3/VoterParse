<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Import
 *
 * @author jamesjones
 */
include_once 'Parser.php';

class Import {
    //put your code here
    public function __construct() {
        
    }
    
    public function extractVoters($filename) {
        $parser = new Parser();
        $handle = @fopen($filename, "r");
        if ($handle) {
            while (($buffer = fgets($handle, 4096)) !== false) {
                $parser->parse($buffer);
            }
            if (!feof($handle)) {
                echo "Error: unexpected fgets() fail\n";
            }
            fclose($handle);
        }        
    }
}

?>
