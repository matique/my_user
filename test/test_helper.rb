if ENV["COVERAGE"]
  require "simplecov"
  SimpleCov.start do
    add_filter "/test/"
  end
end

ENV["RAILS_ENV"] = "test"

require "combustion"
Combustion.path = "test/dummy"
Combustion.initialize! :active_record

require "minitest/autorun"
require "rails/test_help"
