require_relative './lib/AnzComAu/VERSION'

class Gem::Specification
  def development_dependencies=(gems)
    gems.each{|gem| add_development_dependency(*gem)}
  end
end

Gem::Specification.new do |spec|
  spec.name = 'anz_com_au'
  spec.version = AnzComAu::VERSION

  spec.summary = "Download transactions from ANZ Internet Banking."
  spec.description = "Log into ANZ Internet Banking and export an account's transactions. Nothing is implemented yet."

  spec.author = 'thoran'
  spec.email = 'code@thoran.com'
  spec.homepage = 'https://github.com/thoran/anz_com_au'
  spec.license = 'MIT'

  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 3.3'

  spec.files = [
    'anz_com_au.gemspec',
    Dir['lib/**/*.rb'],
    Dir['test/**/*.rb'],
    'CHANGELOG',
    'Gemfile',
    'LICENSE',
    'Rakefile',
    'README.md',
  ].flatten

  spec.development_dependencies = %w{
    minitest
    rake
  }
end
