module Hostel
  class Cli
    class Env < Thor

      include Acclimate::CliHelper

      def self.banner( command, namespace=nil, subcommand=false )
        return "#{basename} env help [SUBCOMMAND]" if command.name == 'help'
        "#{basename} #{command.usage}"
      end

      desc "env show", "Show the hostel envionment"
      def show
        execute Hostel::Command::Env::Show
      end

    end
  end
end
