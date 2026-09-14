<?php

define('ADMINER_DIR', '/usr/share/adminer');

function adminer_object() {
    // required to run any plugin
    include_once ADMINER_DIR . "/include/plugins.inc.php";

    // autoloader
    foreach (glob(ADMINER_DIR . "/plugins/*.php") as $filename) {
        include_once $filename;
    }

    $plugins = array(
        // specify enabled plugins here
        new AdminerVersionNoverify(), // disable phoning home
        //new AdminerLoginServers([
        //    'my' => ['server' => 'localhost', 'driver' => 'server'], // mysql
        //    'pg' => ['server' => 'localhost', 'driver' => 'pgsql'],
        //]),
    );

    /* It is possible to combine customization and plugins:
    class AdminerCustomization extends Adminer\Plugins {
    }
    return new AdminerCustomization($plugins);
    */

    return new Adminer\Plugins($plugins);
}

include ADMINER_DIR . "/adminer.php";
?>
