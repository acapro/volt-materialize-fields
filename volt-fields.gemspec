# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

version = File.read(File.expand_path('../VERSION', __FILE__)).strip


Gem::Specification.new do |spec|
  spec.name          = "volt-materialize-fields"
  spec.version       = version
  spec.authors       = ["Adam Cooper"]
  spec.email         = ["mail@adamcooper.de"]
  spec.summary       = %q{Provides controls for text and textarea fields with built in error reporting and materialize formatting}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "volt", '>= 0.8.27.beta3'
  spec.add_development_dependency "volt-materialize", '>= 0.0.4'
  spec.add_development_dependency "rake"
end
