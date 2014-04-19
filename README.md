Sword Fight Insults
-------------------

![Swordfight Screenshot](https://raw.githubusercontent.com/jph98/swordfightinsults/master/swordfight.png)


This is a basic tutorial for building a Ruby gem from scratch whilst providing the Guybrush Threepwood/Swordmaster insult question/answer interface from Monkey Island

1. Let's create a class that just outputs a message of the day in lib:

        class SwordFightInsults
          def output
            puts ""
          end
        end
    
2. Create a gemspec file to describe the gem, example:

        Gem::Specification.new do |s|
          s.name        = 'SwordFightInsults'
          s.version     = '0.0.0'
          s.date        = '2010-04-28'
          s.summary     = "SwordFightInsults!"
          s.description = "A simple sword fight insult program based on Monkey Island"
          s.authors     = ["Jonathan Holloway"]
          s.email       = 'jon@jon.com'
          s.files       = ["lib/swordfightinsults.rb"]
          s.homepage    =
            'http://rubygems.org/gems/swordfightinsults'
          s.license       = 'MIT'
        end
    
3. Build and install the gem with the following

        gem build swordfightinsults.gemspec
        gem install swordfightinsults-0.0.0.gem
    
4. Require the gem and call the output method

        require 'swordfightinsults'
        new SwordFightInsults().output()
  
n.b. This requires you to have the messages.txt file in the same directory.

5. To push your gem to rubygems.org you need an account.  Signup for an account then issue the following to get the API key credentials onto your machine:

        curl -u <your_username> https://rubygems.org/api/v1/api_key.yaml > ~/.gem/credentials
        chmod 0600 ~/.gem/credentials

Then push your local gem that you've built with:

        gem push swordfightinsults-0.0.0.rb

Make sure it's been pushed successfully by listing the gem:

         gem list -r hola
        
More Tutorials
--------------

You can also use bundler to create Gem skeletons for you, provided you create a skeleton project, with:

        gem install bundle
        bundle gem swordfightinsults

See the following for more info on building Gems:

        http://guides.rubygems.org/make-your-own-gem/
        http://blog.thepete.net/blog/2010/11/20/creating-and-publishing-your-first-ruby/
        
