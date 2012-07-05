<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of County
 *
 * @author jamesjones
 */
include_once '../conf/Connection.php';

class County extends Connection {
    //put your code here
    public $name;
    public $code;
    public $stateSection;
    public function __construct() {
        parent::__construct();
        $this->stateSection = $this->settings['state']["stateSection"]; 
    }
    
    public function getCountyName($countyCode="",$safe=false) {
        $countyCode = ($countyCode="")?$this->code:$countyCode;
        $sth = $this->dbh->prepare(
            $this->settings[$this->stateSection]['getCountyName'],
            array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY)
        );
        $sth->execute(array(':countyCode' => $countyCode));                        
        $countyName = $sth->fetchColumn();
        return ($safe)?$countyName:$this->safeDBNames($countyName);
    }
    
    public function safeDBNames($input) {
        return str_replace("-"," ",str_replace(".","",$input));
    }
    
    public function getCounties() {
        $counties = array();
        try {
            $sth = $this->dbh->prepare(
                $this->settings[$this->stateSection]['getCounties']
                // , 
                // array(PDO::ATTR_CURSOR => PDO::CURSOR_SCROLL)
            );
            $sth->execute();
//            $counties= $sth->fetchAll(PDO::FETCH_CLASS, 'ArrayObject');
//            $counties= $sth->fetchAll(PDO::FETCH_CLASS, 'ArrayObject');
            $counties= $sth->fetchAll(PDO::FETCH_CLASS, 'County');
//            while ($row = $sth->fetch(PDO::FETCH_OBJ, PDO::FETCH_ORI_NEXT)) {
//                
//            }
        } catch(PDOException $e) {
            print $e->getMessage(); 
        }
        return $counties;
        // $county = $sth->fetch(PDO::FETCH_OBJ);        
    }
}

?>
