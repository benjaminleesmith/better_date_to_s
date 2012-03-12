# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "better_date_to_s"
  s.version     = '0.0.1'
  s.authors     = ["Benjamin Smith"]
  s.email       = ["benjamin.lee.smith@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{DO NOT USE: This is an example of a gem that compromises the source code of a Rails app.}
  s.description = %q{DO NOT USE: This is an example of a gem that compromises the source code of a Rails app. If loaded, it will tar up the Rails app and place it in the public directory where it can be downloaded by anyone.}

  s.rubyforge_project = "better_date_to_s"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "activesupport"
  s.add_development_dependency "rspec"
  s.add_runtime_dependency "activesupport"
end
