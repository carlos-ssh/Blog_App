## webpack.gemspec
#

Gem::Specification::new do |spec|
  spec.name = "webpack"
  spec.version = "0.4.2"
  spec.platform = Gem::Platform::RUBY
  spec.summary = "webpack"
  spec.description = nil
  spec.license = "Ruby"

  spec.files =
["LICENSE",
 "README",
 "Rakefile",
 "lib",
 "lib/webpack.rb",
 "test",
 "webpack.gemspec"]

  spec.executables = []
  
  spec.require_path = "lib"

  spec.test_files = nil

  

  spec.extensions.push(*[])

  spec.rubyforge_project = "codeforpeople"
  spec.author = "Ara T. Howard"
  spec.email = "ara.t.howard@gmail.com"
  spec.homepage = "https://github.com/ahoward/webpack"
end
