Gem::Specification.new do |gem|
  gem.name          = "population_growth_simulator"
  gem.authors       = ["Katie Atkinson"]
  gem.email         = ["katie@atkinson.mn"]
  gem.description   = "gem models population growth"
  gem.summary       = "gem models population growth"
  gem.homepage      = ""

  gem.files         = ["simulator/*.rb"]
  gem.test_files    = [tests/test*.rb

  gem.add_dependency('maruku', '~> 0.6.1')
  gem.add_dependency('premailer', '~> 1.7.3')
  gem.add_dependency('nokogiri', '~> 1.5.5')
end
