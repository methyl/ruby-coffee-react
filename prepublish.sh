#!/bin/bash
node node_modules/browserify/bin/cmd.js \
  --require "coffee-react-transform" \
  --detect-globals "false" \
  --insert-global-vars "__filename,__dirname" \
  --standalone "coffeeReactTransform" \
  > coffee-react-transform.js
