# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slackistrano/version'

Gem::Specification.new do |gem|
  gem.name          = "slackistrano"
  gem.version       = Slackistrano::VERSION
  gem.authors       = ["Jakub Jakubiec"]
  gem.email         = ["kip9@poczta.onet.pl"]
  gem.description   = %q{}
  gem.summary       = %q{}
  gem.homepage      = "https://github.com/kip9/slackistrano"
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'json'
  gem.add_development_dependency 'rake'
end
