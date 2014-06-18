#!/bin/bash
echo ";if (typeof window == 'undefined' && typeof global == 'undefined') { var global = {}; };" > coffee-react-transform.js
node node_modules/browserify/bin/cmd.js \
  --require "coffee-react-transform" \
  --detect-globals "false" \
  --insert-global-vars "__filename,__dirname" \
  --standalone "coffeeReactTransform" \
  >> coffee-react-transform.js
echo ";var coffeeReactTransform = coffeeReactTransform || (typeof global == 'object' && global.coffeeReactTransform) || require('coffee-react-transform');" >> coffee-react-transform.js