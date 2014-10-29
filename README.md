ruby-coffee-react
=================

`ruby-coffee-react` is a bridge to the npm [coffee-react-transform](https://github.com/jsdf/coffee-react-transform) module.

    CoffeeReact.transform File.open("component.cjsx")


Installation
------------

    gem install coffee-react


Compatibility
------------
ruby-coffee-react 2.x is compatible with react ^0.12.0
ruby-coffee-react 0.x is compatible with react <=0.11.2

Dependencies
------------

### JSON

The `json` library is also required but is not explicitly stated as a
gem dependency. If you're on Ruby 1.8 you'll need to install the
`json` or `json_pure` gem. On Ruby 1.9, `json` is included in the
standard library.

### ExecJS

The [ExecJS](https://github.com/sstephenson/execjs) library is used to automatically choose the best JavaScript engine for your platform. Check out its [README](https://github.com/sstephenson/execjs/blob/master/README.md) for a complete list of supported engines.

This gem has been tested against the following ExecJS runtimes: Node, RubyRacer, JavaScriptCore. If you encounter any problems with these or any other ExecJS runtimes, please [create a issue](https://github.com/jsdf/ruby-coffee-react/issues).
