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
include_once 'Import.php';

class Services {
    private $import;
    function __construct() {
        $this->import = new Import();
    }
    public function invokeService($params) {
        if (isset($params['method'])) {            
            $uuid = new uuid();
            $response = array(
                "id" => (isset($params['id']))?$params['id']:$uuid->v4(),
                "jsonrpc" => (isset($params['jsonrpc']))?$params['jsonrpc']:"2.0"
            );
            $request=(isset($params['params']))?json_decode($params['params']):array();
            header('Content-type: application/json');
            switch ($this->params['service']) {
                case "extractVoters": 
                    $import = new Import();
                    (isset($request[0]['importFile']))?$import->extractVoters($request[0]['importFile']):$import->extractVoters();
                    echo json_encode((object) array_merge($response,array(
                        "result" => "queued"
                    )));
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
