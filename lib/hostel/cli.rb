module Hostel
  class Cli < Thor

    extend Autoloaded

    include Acclimate::CliHelper

    desc 'env SUBCOMMAND', "Investigate the hostel environment"
    subcommand "env", Hostel::Cli::Env

    #desc "provision", "Provision one or more servers"
    #def provision
      #execute Hostel::Command::Provision
    #end

  end
end
