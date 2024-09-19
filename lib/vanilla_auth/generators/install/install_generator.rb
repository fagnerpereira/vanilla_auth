require "rails/generators"
require "rails/generators/base"

module VanillaAuth
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("templates", __dir__)

      def handle_current_model
        if File.exist?("app/models/current.rb")
          add_code_to_current_model
        else
          create_current_model
        end
      end

      private

      def add_code_to_current_model
        inject_into_file "app/models/current.rb", after: "class Current < ActiveSupport::CurrentAttributes\n" do
          File.read(File.join(self.class.source_root, "current.rb.tt"))
            .gsub(/class.*\n/, "")  # Remove the class definition line
            .gsub(/end\n*\z/, "")   # Remove the last end statement
        end
      end

      def create_current_model
        template "current.rb.tt", "app/models/current.rb"
      end
    end
  end
end
