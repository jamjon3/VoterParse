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
    private $settings;
    public function __construct() {
        $this->settings = parse_ini_file("settings.ini", true);
    }
    
    public function extractVoters() {
        $parser = new Parser();
        $handle = @fopen($this->settings['import']['importFile'], "r");
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
