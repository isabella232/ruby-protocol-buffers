require 'rubygems'
require 'rake/gempackagetask'

spec = Gem::Specification.new do |s|
  s.name = "ruby-protobuf"
  s.version = "0.1.0"
  s.author = "Brian Palmer"
  s.email = "brian@mozy.com"
  s.homepage = "http://todo"
  s.platform = Gem::Platform::RUBY
  s.summary = "Ruby compiler and runtime for the google protocol buffers library. Currently includes a compiler based on protoc, as well as a highly experimental pure-ruby compiler."

  s.files = FileList["{bin,lib}/**/*"].to_a
  s.require_path = 'lib'
end

Rake::GemPackageTask.new(spec) do |pkg|
end

task :default => "pkg/#{spec.name}-#{spec.version}.gem" do
    puts "generated latest version"
end