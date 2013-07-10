# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cherokey_assets/version'

Gem::Specification.new do |gem|
  gem.name          = "cherokey_assets"
  gem.version       = CherokeyAssets::VERSION
  gem.authors       = ["Markus Saradjuk"]
  gem.email         = ["Markus.Saradjuk@softwareinmotion.de"]
  gem.description   = %q{Styles for CheroKey}
  gem.summary       = %q{Styles for CheroKey}
  gem.homepage      = "https://github.com/softwareinmotion/cherokey_assets"

  gem.files         = `git ls-files`.split($/)
  gem.require_paths = ["lib"]
  gem.add_dependency "railties", ">= 3.0", "< 5.0"
end
