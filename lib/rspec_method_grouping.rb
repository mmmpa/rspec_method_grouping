require 'rspec_method_grouping/version'
require 'active_support'
require 'active_support/core_ext'

module RSpecMethodGrouping
  class Base
    class << self
      def prepare(example)
        @finder = new(example)
      end

      def method_missing(name, *args)
        @finder.send(name, *args)
      end
    end

    def initialize(example)
      @example = example
    end

    def method_missing(name, *args)
      @example.send(name, *args)
    end
  end
end

if defined?(RSpec)
  RSpec.configure do |config|
    config.before do
      RSpecMethodGrouping::Base.subclasses.each do |subclass|
        subclass.prepare(self)
      end
    end
  end
else
  raise 'RSpecMethodGrouping requires RSpec'
end

