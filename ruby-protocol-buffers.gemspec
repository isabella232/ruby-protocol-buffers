# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "protocol_buffers"

Gem::Specification.new do |s|
  s.name        = "ruby-protocol-buffers"
  s.version     = ProtocolBuffers::VERSION
  s.authors     = ["Brian Palmer", "Rob Marable", "Paulo Luis Franchini Casaretto"]
  s.email       = ["brian@codekitchen.net"]
  s.homepage    = "https://github.com/mozy/ruby-protocol-buffers"
  s.summary     = %{Ruby compiler and runtime for the google protocol buffers library.}

  case RUBY_PLATFORM
  when /java/
    s.platform = 'java'
  else
    s.platform = Gem::Platform::RUBY
    s.extensions = ['ext/extconf.rb']
  end

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.extra_rdoc_files << "Changelog.md"

  s.add_development_dependency "rspec", "~> 2.5"
  s.add_development_dependency "autotest-standalone"
  s.add_development_dependency "autotest-growl"
  s.add_development_dependency "simplecov"
  s.add_development_dependency "yard"
end
