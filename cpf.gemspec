Gem::Specification.new do |s|
  s.name        = "cpf"
  s.version     = "0.3.0"
  s.authors     = ["Diogo Scudelletti", "Herminio Torres"]
  s.email       = ["diogo@scudelletti.com","herminiocesar@gmail.com"]
  s.homepage    = "http://github.com/hidenowt/cpf"
  s.summary     = "Gem para validar CPF!"
  s.description = "Gem para validar CPF em qualquer tipo de aplicação que fizer uso da mesma."
  
  s.add_development_dependency('rspec')
  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project = 'cpf'
  
  s.files = Dir["{lib/*.rb,README.rdoc,spec/**/*.rb,Rakefile,*gemspec}"]
end
