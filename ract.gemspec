# frozen_string_literal: true

require_relative 'lib/ract/version'

Gem::Specification.new do |spec|
  spec.name = 'ract'
  spec.version = Ract::VERSION

  spec.authors = ['Thadeu Esteves Jr']
  spec.email = ['tadeuu@gmail.com']
  spec.summary = 'A simple and lightweight gem to wrapper Threads(Promises) like JavaScript in Ruby'
  spec.description = 'A simple and lightweight gem to wrapper Threads(Promises) like JavaScript in Ruby, adding a color to Ruby Threads'
  spec.homepage = 'https://github.com/thadeu/ract'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.7.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end

  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
