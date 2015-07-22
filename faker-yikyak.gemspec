require "faker-yikyak/version"

Gem::Specification.new do |s|
  s.name        = "faker-yikyak"
  s.version     = FakerYikYak::VERSION
  s.authors     = ["Chris Sloop"]
  s.email       = ["csloop@wesleyan.edu"]
  s.homepage    = "https://github.com/cribbles/faker-yikyak"
  s.summary     = %q{Extends Faker with YikYakov word soup}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_runtime_dependency "faker"
  s.add_runtime_dependency "marky_markov"
end
