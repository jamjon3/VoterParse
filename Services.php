<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Services
 *
 * @author james
 */
class Services {
    private $request;
    function __construct() {
        
    }
    
    public function invokeService($params) {
        if (isset($params['method'])) {
            if (isset($params['request'])) {
                $this->request = json_decode($params['request']);
            }
            header('Content-type: application/json');
            switch ($this->params['service']) {
                case "ws_adLookup": 
                    echo json_encode((object) array('status' => $this->ws_adLookup()));
                    break;
                case "GetAuthStatus":
                    echo json_encode((object) array('casauthenticated' => $this->GetAuthStatus()));
                    break;
                default:
                    echo 'fart';
            }
            exit;
        } else {
            // do nothing but build CAS and let this continue
            // $this->buildCAS();            
        }
    }
}

?>
