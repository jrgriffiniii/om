# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "om/version"

Gem::Specification.new do |s|
  s.name        = "om"
  s.version     = Om::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Matt Zumwalt"]
  s.email       = %q{matt.zumwalt@yourmediashelf.com}
  s.homepage    = %q{http://github.com/mediashelf/om}
  s.summary     = %q{OM (Opinionated Metadata): A library to help you tame sprawling XML schemas like MODS.}
  s.description = %q{OM (Opinionated Metadata): A library to help you tame sprawling XML schemas like MODS.  Wraps Nokogiri documents in objects with miscellaneous helper methods for doing things like retrieve generated xpath queries or look up properties based on a simplified DSL}

  s.add_dependency('nokogiri', ">= 1.4.2")
  s.add_development_dependency "rspec", "<2.0.0"
  s.add_development_dependency "mocha", ">= 0.9.8"
  s.add_development_dependency "ruby-debug"
  s.add_development_dependency "equivalent-xml", ">= 0.2.4"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc",
    "README.textile"
  ]
  s.require_paths = ["lib"]
end
