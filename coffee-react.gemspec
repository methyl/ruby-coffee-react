puts `./prepublish.sh`

Gem::Specification.new do |s|
  s.name      = 'coffee-react'
  s.version   = '0.2.1'
  s.date      = '2014-06-02'

  s.homepage    = "http://github.com/jsdf/ruby-coffee-react"
  s.summary     = "Ruby Coffeescript React CJSX Transformer Compiler"
  s.description = <<-EOS
    ruby-coffee-react is a bridge to the npm coffee-react-transform module, and can compile Coffeescript also.
  EOS
  s.license = "MIT"

  s.files = [
    'lib/coffee-react.rb',
    'lib/coffee_react.rb',
    'coffee-react-transform.js',
    'LICENSE',
    'README.md'
  ]

  # s.add_dependency 'coffee-script-source'
  s.add_dependency 'execjs'
  s.add_development_dependency 'json'
  # s.add_development_dependency 'rake'

  s.authors = ['James Friend']
  s.email   = 'james@jsdf.co'
end
