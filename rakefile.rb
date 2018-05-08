require 'rake'
require 'rspec/core/rake_task'
require 'parallel_tests/tasks'
require 'shellwords'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = Dir.glob('spec/**/*_spec.rb')
end
task :default => :spec