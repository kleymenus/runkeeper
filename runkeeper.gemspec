# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "runkeeper/version"

Gem::Specification.new do |s|
	s.name        = "runkeeper_api"
	s.version     = Runkeeper::VERSION.dup
	s.authors     = ["Alexander Kleymenov"]
	s.email       = ["kleymenus@gmail.com"]
	s.homepage    = "https://github.com/kleymenus/runkeeper_api"
	s.summary     = %q(Runkeeper API client.)
	s.description = %q(Runkeeper API client.)

	s.files         = `git ls-files`.split("\n")
	s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
	s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
	s.require_paths = ["lib"]
	s.add_dependency "httparty"
	s.add_development_dependency 'rack'
	s.add_development_dependency 'launchy'
end
