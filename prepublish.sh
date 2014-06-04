#!/bin/bash
browserify -r coffee-react-transform -s > coffee-react-transform.js
echo ";coffeeReactTransform = require('coffee-react-transform');" >> coffee-react-transform.js
