ruby-coffee-react
=================

`ruby-coffee-react` is a bridge to the npm [coffee-react-transform](https://github.com/jsdf/coffee-react-transform) module.

    CoffeeReact.transform File.read("component.cjsx")


Installation
------------

    gem install coffee-react

Dependencies
------------

### JSON

The `json` library is also required but is not explicitly stated as a
gem dependency. If you're on Ruby 1.8 you'll need to install the
`json` or `json_pure` gem. On Ruby 1.9, `json` is included in the
standard library.

### ExecJS

The [ExecJS](https://github.com/sstephenson/execjs) library is used to automatically choose the best JavaScript engine for your platform. Check out its [README](https://github.com/sstephenson/execjs/blob/master/README.md) for a complete list of supported engines.
