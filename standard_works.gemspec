
lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'standard_works/version'

Gem::Specification.new do |spec|
  spec.name          = 'standard_works'
  spec.version       = StandardWorks::VERSION
  spec.authors       = ['Davin Walker']
  spec.email         = ['dishcandanty@gmail.com']

  spec.summary       = 'LDS Scripture Lookup Helper'
  spec.description   = 'Display/Find References'
  spec.homepage      = 'https://github.com/dishcandanty/standard-works'
  spec.license       = 'MIT'

  spec.files         = Dir['lib/**/*']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'gem-release', '~>0.7'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'minitest-reporters', '~> 1.1'
  spec.add_development_dependency 'oj', '~> 3.4.0'
  spec.add_development_dependency 'pry', '~>0.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop', '~> 0.52'
  spec.add_development_dependency 'simplecov', '~> 0.15'
end
