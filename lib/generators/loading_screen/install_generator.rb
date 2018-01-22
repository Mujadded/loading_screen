module LoadingScreen
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      desc "This generator installs all the files necessary for the loading_screen gem"


      def copy_stylesheet_and_images
        path = "public/stylesheets/loading_screen.css"
        copy_file "./#{path}", path
        path = "public/images/loading_screen-infinity.gif"
        copy_file "./#{path}", path
      end

      def copy_javascript
        path = "public/javascripts/loading_screen.js"
        copy_file "./#{path}", path
      end

      def copy_app_files
        path = "app/helpers/loading_screen.rb"
        copy_file "./#{path}", path
      end

      # Output installation instructions for the user
      def instructions
        puts '---------------------------------------------------------------'
        puts 'To complete your installation...'
        puts ''
        puts "1: Add this gem to your project Gemfile and run 'bundle install'"
        puts ''
        puts "   gem 'loading_screen'"
        puts ''
        puts '2: Make sure you have the jQuery JavaScript library installed (via jquery-rails)'
        puts ''
        puts '   $ rails generate jquery:install'
        puts ''
        puts '3: Check that these first two lines are in layouts/application.html.erb and add the third'
        puts ''
        puts '  <%= stylesheet_link_tag :all %>'
        puts '  <%= javascript_include_tag :defaults %>'
        puts "  <%= javascript_include_tag 'loading_screen.js' %>"
        puts ''
        puts '5: Add "<%= loading_screen(\'css\') %>"'
        puts ''
        puts 'For more information see the project page on GitHub'
        puts '   https://github.com/mujadded/loading_screen'
        puts '---------------------------------------------------------------'
      end

    end
  end
end
