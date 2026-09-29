#!/bin/sh
keytool -genkeypair -v -keystore release.jks -alias upload -keyalg RSA -keysize 2048 -validity 9125 -storepass 'Z34M@S@UFtmL4wASBxMS' -keypass 'Z34M@S@UFtmL4wASBxMS' -dname "CN=Web 2 App, O=Web 2 App, C=IN"
mv release.jks android/app/release.jks
keytool -list -v -keystore android/app/release.jks -alias upload -storepass 'Z34M@S@UFtmL4wASBxMS' | grep SHA256
