# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'myway/version'

Gem::Specification.new do |spec|
  spec.name          = 'myway-cli'
  spec.version       = Myway::VERSION
  spec.authors       = ['Jonathan Moallem']
  spec.email         = ['jdmoallem@gmail.com']

  spec.summary       = 'A command line tool for the MyWay Sinatra framework'
  spec.description   = 'The MyWay CLI allows users to create, modify, run'\
                       ' and test projects using the MyWay Sinatra framework'\
                       ' (see here: https://github.com/J-Mo63/myway-sinatra)'\
                       ' using the simple `myway` command.'
  spec.homepage      = 'https://github.com/J-Mo63/myway-cli'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
end
