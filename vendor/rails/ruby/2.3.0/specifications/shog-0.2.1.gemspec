# -*- encoding: utf-8 -*-
# stub: shog 0.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "shog".freeze
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Paul Alexander".freeze]
  s.date = "2018-05-21"
  s.description = "More than just colorful tags, make rails logged info easy to read and understand.".freeze
  s.email = ["me@phallguy.com".freeze]
  s.homepage = "https://github.com/phallguy/shog".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2".freeze)
  s.rubygems_version = "2.5.2.1".freeze
  s.summary = "Simple colored logging for rails 4 and 5 apps".freeze

  s.installed_by_version = "2.5.2.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, [">= 4"])
      s.add_runtime_dependency(%q<colorize>.freeze, [">= 0.8"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.6"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.00"])
    else
      s.add_dependency(%q<rails>.freeze, [">= 4"])
      s.add_dependency(%q<colorize>.freeze, [">= 0.8"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.6"])
      s.add_dependency(%q<rake>.freeze, ["~> 10"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.00"])
    end
  else
    s.add_dependency(%q<rails>.freeze, [">= 4"])
    s.add_dependency(%q<colorize>.freeze, [">= 0.8"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.6"])
    s.add_dependency(%q<rake>.freeze, ["~> 10"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.00"])
  end
end
