require 'pathname'

module Hostel
  class Configuration < Acclimate::Configuration

    def self.config_filepath
      @@config_filepath ||= Pathname.new( '.hostel' )
    end

    def project_path
      Pathname.new( super )
    end

  end
end
