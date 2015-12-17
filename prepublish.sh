#!/bin/bash
echo ";if (typeof window == 'undefined' && typeof global == 'undefined') { var global = {}; };" > coffee-react-transform.js
node node_modules/browserify/bin/cmd.js \
  --require "coffee-react-transform" \
  --detect-globals "false" \
  --insert-global-vars "__filename,__dirname" \
  --standalone "coffeeReactTransform" \
  >> coffee-react-transform.js
echo ";if (typeof coffeeReactTransform == 'undefined') { var coffeeReactTransform = global.coffeeReactTransform; }" >> coffee-react-transform.js

echo ";if (typeof window == 'undefined' && typeof global == 'undefined') { var global = {}; };" > js-syntax-transform.js
cat node_modules/coffee-react-jstransform/dist/js-syntax-transform.js >> js-syntax-transform.js
echo ";if (typeof coffeeReactJSSyntaxTransform == 'undefined') { var coffeeReactJSSyntaxTransform = global.coffeeReactJSSyntaxTransform; }" >> js-syntax-transform.js
