#!/bin/bash

# Get flutter
git clone https://github.com/flutter/flutter.git
FLUTTER=flutter/bin/flutter

# Configure flutter
# you can put html also to have the website as html
FLUTTER_RENDERER=auto
FLUTTER_CHANNEL=stable
FLUTTER_VERSION=v3.0.1
$FLUTTER channel $FLUTTER_CHANNEL
$FLUTTER version $FLUTTER_VERSION
# $FLUTTER config --enable-web

# Build flutter for web
$FLUTTER build web

echo "OK"