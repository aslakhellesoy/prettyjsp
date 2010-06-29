require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "prettyjsp"
    gem.summary = %Q{Pretty printing of JSP files}
    gem.description = %Q{Medicine for indentation dyslexic teams}
    gem.email = "aslak.hellesoy@gmail.com"
    gem.homepage = "http://github.com/aslakhellesoy/prettyjsp"
    gem.authors = ["Aslak Hellesøy"]
    gem.add_development_dependency "rspec", ">= 2.0.0.beta.14"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :spec => :check_dependencies

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "prettyjsp #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
