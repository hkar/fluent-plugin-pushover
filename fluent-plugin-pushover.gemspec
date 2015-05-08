# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "fluent-plugin-pushover"
  s.version     = "1.0.0"
  s.authors     = ["Jan Karásek"]
  s.email       = ["devel@hkar.eu"]
  s.homepage    = "https://github.com/hkar/fluent-plugin-pushover"
  s.summary     = %q{Fluentd Output plugin to make a call with Pushover API.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rake"
  s.add_runtime_dependency "fluentd"
end
