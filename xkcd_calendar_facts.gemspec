
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "xkcd_calendar_facts/version"

Gem::Specification.new do |spec|
  spec.name          = "xkcd_calendar_facts"
  spec.version       = XKCDCalendarFacts::VERSION
  spec.authors       = ["Travis Petersen"]
  spec.email         = ["travis.e.petersen@gmail.com"]

  spec.summary       = %q{XKCD Calendar Facts}
  spec.description   = %q{This Ruby Gem generates random calendar facts from Randall Munroe\'s XKCD #1930 \'Calendar Facts\''}
  spec.homepage      = "https://rubygems.org/gems/xkcd_calendar_facts"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  #spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.executables   = ["xkcd_calendar_facts"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
