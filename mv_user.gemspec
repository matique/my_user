# frozen_string_literal: true

require_relative "lib/my_user/version"

Gem::Specification.new do |s|
  s.name = "my_user"
  s.version = MyUse::VERSION
  s.platform = Gem::Platform::RUBY
  s.license = "MIT"

  s.summary = %(Simple and )
  s.description = <<~EOS
    PLUG
  EOS

  s.authors = ["Dittmar Krall"]
  s.email = "dittmar.krall@matiq.com"
  s.homepage = "https://github.com/matique/my_user"

  s.files = `git ls-files`.split("\n")

  s.add_development_dependency "combustion"
  s.add_development_dependency "minitest"
  s.add_development_dependency "ricecream"
  s.add_development_dependency "sqlite3"
end
