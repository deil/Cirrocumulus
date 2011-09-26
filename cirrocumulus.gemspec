# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{cirrocumulus}
  s.version = "0.2.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Anton Kosyakin"]
  s.date = %q{2011-09-27}
  s.description = %q{Engine for building your own agents, providing you base functionality for loading ontologies, communicating with other agents and parsing FIPA-ACL messages}
  s.email = %q{deil@mneko.net}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "cirrocumulus.gemspec",
    "lib/cirrocumulus.rb",
    "lib/cirrocumulus/agent.rb",
    "lib/cirrocumulus/engine.rb",
    "lib/cirrocumulus/kb.rb",
    "lib/cirrocumulus/logger.rb",
    "lib/cirrocumulus/master_agent.rb",
    "lib/cirrocumulus/ontology.rb",
    "lib/cirrocumulus/saga.rb",
    "test/helper.rb",
    "test/test_cirrocumulus.rb"
  ]
  s.homepage = %q{http://github.com/deil/cirrocumulus}
  s.licenses = ["GPL-2"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Agent-based infrastructure management system}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ["~> 2.3.11"])
      s.add_runtime_dependency(%q<log4r>, ["~> 1.1.9"])
      s.add_runtime_dependency(%q<systemu>, [">= 0"])
      s.add_runtime_dependency(%q<xmpp4r>, ["~> 0.5"])
      s.add_runtime_dependency(%q<xmpp4r-simple>, ["~> 0.8.8"])
      s.add_runtime_dependency(%q<deil_sexpistol>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, ["~> 2.3.11"])
      s.add_dependency(%q<log4r>, ["~> 1.1.9"])
      s.add_dependency(%q<systemu>, [">= 0"])
      s.add_dependency(%q<xmpp4r>, ["~> 0.5"])
      s.add_dependency(%q<xmpp4r-simple>, ["~> 0.8.8"])
      s.add_dependency(%q<deil_sexpistol>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, ["~> 2.3.11"])
    s.add_dependency(%q<log4r>, ["~> 1.1.9"])
    s.add_dependency(%q<systemu>, [">= 0"])
    s.add_dependency(%q<xmpp4r>, ["~> 0.5"])
    s.add_dependency(%q<xmpp4r-simple>, ["~> 0.8.8"])
    s.add_dependency(%q<deil_sexpistol>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

