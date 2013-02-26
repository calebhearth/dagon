# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name          = "dagon"
  gem.version       = "0.1.2"
  gem.authors       = ["Caleb Thompson", "Matt Mongeau"]
  gem.email         = ["cjaysson@gmail.com", "halogenandtoast@gmail.com"]
  gem.description   = "The Dagon programming language: whitespace, enumerators, blocks, One Way"
  gem.summary       = "The Esoteric Order of Dagon"
  gem.homepage      = "https://github.com/calebthompson/dagon"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/(dagon|idgr)}).map{ |f| File.basename(f) }
  gem.require_paths = %w{. dagon}

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'racc'
  gem.add_development_dependency 'pry'
end
