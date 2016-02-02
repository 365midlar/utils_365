# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'utils_365/version'

Gem::Specification.new do |spec|
  spec.name          = 'utils_365'
  spec.version       = Utils365::VERSION
  spec.authors       = ['Bjarki Gudlaugsson']
  spec.email         = ['bjarki@codehuggers.com']

  spec.summary       = '365 core extensions and utils'
  spec.description   = '365 core extensions and utils'
  spec.homepage      = 'http://github.com/365midlar/utils_365'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = ''
  else
    fail 'RubyGems 2.0 or newer is required to protect'\
         'against public gem pushes.'
  end

  spec.files = `git ls-files -z`.split('\x0').reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
end
