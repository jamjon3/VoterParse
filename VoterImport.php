<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of VoterImport
 *
 * @author jamesjones
 */
include_once 'schema/County.php';
class VoterImport extends County {
    public $voterImportScript;
    public $historyImportScript;
    public $bootstrapFlag;
    public $bootstrapScript;
    public function __construct() {
        parent::__construct();
        $this->voterImportScript = $this->settings[$this->stateSection]['voterImportScript'];
        $this->historyImportScript = $this->settings[$this->stateSection]['historyImportScript'];
        $this->bootstrapFlag =  $this->settings[$this->stateSection]['bootstrapFlag'];
        $this->bootstrapScript =  $this->settings[$this->stateSection]['bootstrapScript'];
//        if($this->bootstrapFlag) {
//            try {
//                echo "My Contents".file_get_contents("./".$this->bootstrapScript, FILE_USE_INCLUDE_PATH);
//                $sth = $this->dbh->prepare(file_get_contents("./".$this->bootstrapScript, FILE_USE_INCLUDE_PATH));
//                $sth->execute();
//                $i = 1;
//                do {
//                    echo "Processing Multiquery item ".$i."\n";
//                    if($i == 4) {
//                        // echo $sth->fetchColumn()."\n";
//                    }
//                    $i++;
//                } while ($sth->nextRowset());                            
//            } catch(PDOException $e) {
//                print $e->getMessage(); 
//                print $e->getTraceAsString();
//            }
//        }
        error_reporting(E_ALL);
        ini_set('display_errors', '1');
        // $this->tryPrepared();
        // $this->tryHistory();
        $this->importFiles(
            $this->historyImportScript, 
            $this->settings[$this->stateSection]['historyFiles']
        );
//        $this->importFiles(
//            $this->voterImportScript, 
//            $this->settings[$this->stateSection]['voterFiles']
//        );
    }
    
    public function importFiles($importScript,$importPath) {
        echo $importScript."\n";
        echo file_get_contents("./".$importScript, FILE_USE_INCLUDE_PATH);
        if ($handle = opendir("./".$importPath)) {
            /* This is the correct way to loop over the directory. */
            while (false !== ($filename = readdir($handle))) {
                if ($filename != "." && $filename != "..") {
                    if(!is_dir($importPath."/".$filename)) {
                        if(file_exists('/tmp/vparseImport.txt')) {
                            unlink('/tmp/vparseImport.txt');
                        }
                        symlink(getcwd()."/".$importPath."/".$filename, '/tmp/vparseImport.txt');
                        $sth = $this->dbh->prepare(file_get_contents("./".$importScript, FILE_USE_INCLUDE_PATH));
                        $sth->execute(array(
                            ':importFile' => (empty($this->settings[$this->stateSection]['importDate']))?$filename:$this->settings[$this->stateSection]['importDate']
                        ));
                        try {
                            $i = 1;
                            do {
                                echo "Processing Multiquery item ".$i."\n";
                                $i++;
                            } while ($sth->nextRowset());                            
                        } catch(PDOException $e) {
                            print $e->getMessage(); 
                            print $e->getTraceAsString();
                        }
                        unlink('/tmp/vparseImport.txt');
                        echo "$filename\n";
                    }                    
                }                
            }
            closedir($handle);
        }        
    }
    public function tryHistory() {
        echo $this->historyImportScript."\n";
        echo file_get_contents("./".$this->historyImportScript, FILE_USE_INCLUDE_PATH);
        if ($handle = opendir("./".$this->settings[$this->stateSection]['historyFiles'])) {
            /* This is the correct way to loop over the directory. */
            while (false !== ($filename = readdir($handle))) {
                if ($filename != "." && $filename != "..") {
                    if(!is_dir($this->settings[$this->stateSection]['historyFiles']."/".$filename)) {
                        $sth = $this->dbh->prepare(file_get_contents("./".$this->historyImportScript, FILE_USE_INCLUDE_PATH));
                        symlink(getcwd()."/".$this->settings[$this->stateSection]['historyFiles']."/".$filename, '/tmp/histories.txt');
                        $sth->execute(array(
                            ':importFile' => $filename
                        ));
                        try {
                            $i = 1;
                            do {
                                echo "Processing Multiquery item ".$i."\n";
                                $i++;
                            } while ($sth->nextRowset());                            
                        } catch(PDOException $e) {
                            print $e->getMessage(); 
                            print $e->getTraceAsString();
                        }
                        unlink('/tmp/histories.txt');
                        echo "$filename\n";
                    }
                }
            }            
            closedir($handle);
        }
        
        
    }
    public function tryPrepared() {
        echo $this->voterImportScript."\n";
        echo file_get_contents("./".$this->voterImportScript, FILE_USE_INCLUDE_PATH);
        if ($handle = opendir("./".$this->settings[$this->stateSection]['voterFiles'])) {
            /* This is the correct way to loop over the directory. */
            while (false !== ($filename = readdir($handle))) {
                if ($filename != "." && $filename != "..") {
                    if(!is_dir($this->settings[$this->stateSection]['voterFiles']."/".$filename)) {
                        $sth = $this->dbh->prepare(file_get_contents("./".$this->voterImportScript, FILE_USE_INCLUDE_PATH));
                        symlink(getcwd()."/".$this->settings[$this->stateSection]['voterFiles']."/".$filename, '/tmp/voters.txt');
                        $sth->execute(array(
                            ':importFile' => $filename
                        ));
                        try {
                            $i = 1;
                            do {
                                echo "Processing Multiquery item ".$i."\n";
                                if($i == 4) {
                                    echo $sth->fetchColumn()."\n";
                                }
                                $i++;
                            } while ($sth->nextRowset());                            
                        } catch(PDOException $e) {
                            print $e->getMessage(); 
                            print $e->getTraceAsString();
                        }
                        unlink('/tmp/voters.txt');
                        echo "$filename\n";
                    }
                }
            }            
            closedir($handle);
        }
    }
}

?>
