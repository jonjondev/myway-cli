# frozen_string_literal: true

require 'myway/version'
require 'fileutils'

module Myway
  # A class for all methods that are used to generate files
  class Generate
    def project(name)
      puts 'Cloning template file into project...'
      location = 'git://github.com/J-Mo63/myway-sinatra'
      system("git clone --depth=1 #{location} #{name}")
      success_message
    end

    def controller(name)
      puts "Generating #{name} controller templates..."
      success_message
    end

    def api(name)
      puts "Generating #{name} API templates..."
      success_message
    end

    private

    def success_message
      puts 'Completed successfully!'
    end
  end

  # A class for all methods that are used to run a project
  class Run
    def start_server
      puts 'Starting Myway server...'
      display_break
      return if system('rake run_myway')
      display_break
      puts 'Server failed to start'
    end

    def run_tests
      puts 'Running Rspec tests...'
      display_break
      success = system('rake test_myway')
      display_break
      puts success ? 'Testing completed' : 'Testing failed'
    end

    private

    def display_break
      puts '------------------------------'
    end
  end
end
