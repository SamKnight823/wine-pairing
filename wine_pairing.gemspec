lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative './lib/wine_pairing/version'

Gem::Specification.new do |s|
  s.name        = 'wine-pairing'
  s.version     = WinePairing::VERSION
  s.date        = '2017-05-20'
  s.summary     = "Wine Pairing"
  s.description = "Provides appropriate wine selections based on meat"
  s.authors     = ["Samantha Knight"]
  s.email       = 'sammay82@yahoo.com'
  s.files       = ["lib/wine_pairing.rb", "lib/wine_pairing/cli.rb", "lib/wine_pairing/wine.rb", "config/environment.rb"]
  s.homepage    = 'http://rubygems.org/gems/wine-pairing'
  s.license     = 'MIT'
  s.executables << 'wine-pairing'

  s.add_development_dependency "bundler", "~> 1.10"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec", ">= 0"
  s.add_development_dependency "nokogiri", ">= 0"
  s.add_development_dependency "pry", ">= 0"
end