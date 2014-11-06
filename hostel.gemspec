# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hostel/version'

Gem::Specification.new do |spec|
  spec.name          = "hostel"
  spec.version       = Hostel::VERSION
  spec.authors       = ["C. Jason Harrelson"]
  spec.email         = ["jason@lookforwardenterprises.com"]
  spec.summary       = %q{Easy host configuration managment.}
  spec.description   = %q{Easy host configuration managment.  See README fo rmore details.}

  spec.homepage      = "https://github.com/midas/hostel"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "acclimate"
end
