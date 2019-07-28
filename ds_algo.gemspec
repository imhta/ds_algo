# frozen_string_literal: true

# ds_algo.gemspec
Gem::Specification.new do |s|
  s.name        = 'ds_algo'
  s.version     = '0.0.5'
  s.date        = '2019-07-28'
  s.summary     = 'ruby gem for data structures and algorithms (under development)'
  s.description = 'collection of data structures and algorithms for learning and to build (under development)'
  s.authors     = ['imhtapm']
  s.email       = 'imhtapm@gmail.com'
  s.files       = ['lib/ds_algo.rb',
                   'lib/data_struct/linked_list.rb',
                   'lib/data_struct/stack.rb',
                   'lib/data_struct/queue.rb',
                   'lib/data_struct/tree.rb']
  s.homepage    =  'https://rubygems.org/gems/ds_algo'
  s.metadata    = { "source_code_uri" => "https://github.com/imhtapm/ds_algo" }
  s.license = 'MIT'
end
