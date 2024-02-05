# frozen_string_literal: true

require_relative "hello_wayne/version"

module HelloWayne
  def self.greet
    puts "Hello Wayne"
  end

  def self.shame(shamed)
      puts "Shame on #{shamed}" 
  end
end
