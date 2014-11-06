module Hostel
  class Command < Acclimate::Command

    extend Autoloaded

  protected

    def config_klass
      Hostel::Configuration
    end

    def ensure_config_file!
      return if config_filepath.file?

      raise_error "Configuration file does not exist: #{config_filepath.expand_path}."
    end

  end
end
