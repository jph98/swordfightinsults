rubygemtutorial
===============

This is a basic tutorial for building a Ruby gem from scratch.

1. Let's create a class that just outputs a message of the day in lib:

    class Motd
      def output
        puts ""
      end
    end
    
2. Create a gemspec file to describe the gem, example:

    Gem::Specification.new do |s|
      s.name        = 'motd'
      s.version     = '0.0.0'
      s.date        = '2010-04-28'
      s.summary     = "Message of the day!"
      s.description = "A simple message of the day Ruby gem"
      s.authors     = ["Jonathan Holloway"]
      s.email       = 'jon@jon.com'
      s.files       = ["lib/motd.rb"]
      s.homepage    =
        'http://rubygems.org/gems/motd'
      s.license       = 'MIT'
    end
    
3. Build and install the gem with the following

    gem build motd.gemspec
    gem install motd-0.0.0.gem
    
4. Require the gem and call the output method

    require 'motd'
    new Motd().output()
  

  
