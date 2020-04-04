# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = 'supercluster'
  s.version = '0.0.4'
  s.summary = 'supercluster Ruby gem is a bridge to JavaScript library supercluster.js'
  s.description =
    'A very fast geospatial point clustering library for browsers and Node.'
  s.authors = ['Michael Yin']
  s.email = 'layerssss@gmail.com'
  s.files = Dir['lib/*.rb', 'lib/supercluster-build.js']
  s.homepage = 'https://github.com/layerssss/superclusterjs-ruby'
  s.license = 'MIT'
  s.add_runtime_dependency 'mini_racer', '~> 0.2.0'
end
