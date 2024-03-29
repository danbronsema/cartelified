# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cartelified/version"

Gem::Specification.new do |s|
  s.name        = "cartelified"
  s.version     = Cartelified::VERSION
  s.authors     = ["Dan Bronsema"]
  s.email       = ["danbronsema@stripemedia.com.au"]
  s.homepage    = "http://www.stripemedia.com.au"
  s.summary     = %q{Intergrate BigCartel}
  s.description = %q{Intergrate BigCartel in Rails app}

  s.rubyforge_project = "cartelified"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_dependency('httparty')
end
