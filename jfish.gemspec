# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "jfish"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jean Lescure"]
  s.date = "2014-02-27"
  s.description = "This RDoc Generator was forked from RDoc's own JFish template and made into a Gem for easy consumption."
  s.email = "jeanmlescure@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md",
    "README.rdoc"
  ]
  s.files = Dir.glob("lib/**/*") + %w(.document Gemfile LICENSE LICENSE README.md Rakefile VERSION jfish.gemspec)
  s.homepage = "http://github.com/jeanlescure/jfish"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "RDoc Generator based on JFish"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rdoc>, ["~> 4.0.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
    else
      s.add_dependency(%q<rdoc>, ["~> 4.0.0"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<rdoc>, ["~> 4.0.0"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
  end
end
