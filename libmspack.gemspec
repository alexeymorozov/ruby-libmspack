# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'libmspack/version'

Gem::Specification.new do |spec|
  spec.name          = 'libmspack'
  spec.version       = LibMsPack::VERSION
  spec.authors       = ['Dāvis']
  spec.email         = ['davispuh@gmail.com']
  spec.description   = 'A library for compressing and decompressing some loosely related Microsoft compression formats, CAB, CHM, HLP, LIT, KWAJ and SZDD.'
  spec.summary       = 'Ruby wrapper for libmspack.'
  spec.homepage      = 'https://github.com/davispuh/ruby-libmspack'
  spec.licenses      = ['UNLICENSE', 'LGPL-2']

  spec.platform      = Gem::Platform::RUBY
  spec.files         = `git ls-files`.split($/)
  spec.files        += Dir.glob('ext/**/*')
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.extensions << 'ext/Rakefile'

  spec.add_runtime_dependency 'ffi'
  spec.add_runtime_dependency 'ffi-compiler', '> 0.1.3'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'yard'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'svn-downloader'
end
