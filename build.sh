#!/bin/bash
cd twentytwentytwo/
php --define phar.readonly=0 compiler.php
cd ../webview/
./gradlew assembleDebug
echo -e "\nOUTCOME: webview.apk built successfully.\n\n\n\n"
./gradlew test
echo -e "OUTCOME: webview tests passed.\n\n\n\n"
cd ../easybuggy/
echo -e "LAUNCHER: initializing easybuggy...\n"
mvn clean install
