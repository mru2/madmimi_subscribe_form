# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "madmimi_subscribe_form"
  s.summary = "A 'subscribe to newsletter' helper for rails, integrated with madmimi."
  s.description = "A 'subscribe to newsletter' helper for rails, integrated with madmimi."
  s.files = Dir["{app,lib,config}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.rdoc"]
  s.version = "0.0.2"
  s.homepage = "https://github.com/MrRuru/madmimi_subscribe_form"
  s.authors = ["David Ruyer", "Benjamin Roth"]
  s.email = ["david.ruyer@gmail.com", "benjamin.roth@peachyweb.com"]  
  
  s.add_dependency('madmimi','>= 1.0.15')
end