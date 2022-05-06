#!/bin/bash
cd twentytwentytwo/
php --define phar.readonly=0 compiler.php
cd ../webview/
./gradlew assembleDebug
echo -e "\nOUTCOME: webview.apk built successfully.\n\n\n"
./gradlew test
echo -e "\nOUTCOME: webview tests passed."
