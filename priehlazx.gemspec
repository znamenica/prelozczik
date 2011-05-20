# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "прѣхлажь/version"

Gem::Specification.new do |s|
  s.name        = "priehlazx"
  s.version     = Priehlazx::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors      = [ 'Малъ Скрылёвъ (Malo Skrylevo)' ]
  s.email        = [ '3aHyga@gmail.com' ]
  s.homepage     = 'https://github.com/3aHyga/priehlazx'
  s.summary      = 'priehlazx is char and text conversion utility and ruby library'
  s.description  = 'priehlazx is utility and ruby library to convert a char and text to a specific codepage'

  s.executables  = [ 'прѣхлагъ', 'priehlag' ]
  s.rubyforge_project = "priehlazx"

  s.required_rubygems_version = '>= 1.6.0'

  s.add_dependency 'rdoba', ">= 0.1"

  s.add_development_dependency("bundler", ">= 1.0.0")
  s.add_development_dependency("rspec", "~> 2.0.1")

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
