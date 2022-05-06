<?php
    echo "Building twentytwentytwo...\n\n";
    $phar = new Phar('twentytwentytwo.phar', 0, 'twentytwentytwo.phar');
    $phar->buildFromDirectory(dirname(__FILE__) . '/');
    $phar->setStub($phar->createDefaultStub('cli/index.php', 'www/index.php'));
    echo "OUTCOME: twentytwentytwo.phar built successfully.\n\n\n\n";
?>
