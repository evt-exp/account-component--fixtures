# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = 'account_component'
  s.version = '0.0.0'
  s.summary = 'Account Component'
  s.description = ' '

  s.authors = ['The Eventide Project']
  s.email = 'opensource@eventide-project.org'
  s.homepage = 'https://github.com/eventide-project/event-store-entity-store'
  s.licenses = ['MIT']

  s.require_paths = ['lib']
  s.files = Dir.glob('{lib}/**/*')
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.2.3'

  s.add_runtime_dependency 'eventide-event_store'
  s.add_runtime_dependency 'collection'
  s.add_runtime_dependency 'validate'
  s.add_runtime_dependency 'initializer'
  s.add_runtime_dependency 'process_host'

  s.add_development_dependency 'test_bench'
end