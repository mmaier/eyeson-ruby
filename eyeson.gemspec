$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'eyeson/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'eyeson'
  s.version     = Eyeson::VERSION
  s.authors     = ['Michael Maier']
  s.email       = ['michael.maier@visocon.com']
  s.homepage    = 'https://www.eyeson.team/developers'
  s.summary     = 'Eyeson API'
  s.description = 'Use the eyeson api to boost your app with video conferencing'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'activesupport', '~> 5.0'
  s.add_dependency 'rest-client'
end
