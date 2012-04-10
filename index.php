<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VoterParse</title>
    </head>
    <body>
        <script type='text/javascript' src='https://www.google.com/jsapi'></script>
        <script type="text/javascript">
            if (window.google && window.google.load) {
                google.load('jquery', '1.6.1');
                google.load('jqueryui', '1.8.13');
                google.setOnLoadCallback(function() {
                    // $('body').prTabber();                    
                });
            } else {
                // Fallback if Google can't load JQuery for us
                document.write('<script type="text/javascript" src="jquery-ui-1.8.8/js/jquery-1.4.4.min.js"><\/script>');
                document.write('<script type="text/javascript" src="jquery-ui-1.8.8/js/jquery-ui-1.8.8.custom.min.js"><\/script>');
                window.onload = function() {
                    $(document).ready(function () {
                        // $('body').prTabber();
                    });
                };            
            }
        </script>        
        <script type="text/javascript" src="https://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.0/jquery.dataTables.min.js"></script>   
        <script src="http://ajax.cdnjs.com/ajax/libs/underscore.js/1.1.4/underscore-min.js"></script>
        <script src="http://ajax.cdnjs.com/ajax/libs/backbone.js/0.3.3/backbone-min.js"></script>        
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
