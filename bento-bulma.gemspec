# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = 'bento-bulma'
  spec.version = '0.9.3'
  spec.authors = ['Jeremy Thomas']
  spec.email = ['bbxdesign@gmail.com']

  spec.summary = 'Make bulma be available through ruby dependencies for Bento scss build tools'
  spec.description = 'Make bulma be available through ruby dependencies for Bento scss build tools'
  spec.homepage = 'https://github.com/bentohq/bulma'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/bentohq/bulma'
  spec.metadata['changelog_uri'] = 'https://github.com/bentohq/bulma/blob/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
