#!/bin/bash
set -eu
cd android
./gradlew assembleRelease
echo "APK built successfully"
