module Hostel
  class Command
    module Env
      class Show < Hostel::Command

        def execute
          show_config
          show_env
        end

      protected

        def show_config
          say nil
          say 'Configuration', :yellow
          say Hostel::Formatter::Config.new( config ).render
        end

        def show_env
          env_keys = ENV.keys
          sources = config.sources.map { |s| Pathname.new( s ).expand_path }
          Acclimate::Env.new( sources ).load

          say nil
          say "ENV", :yellow
          say Hostel::Formatter::Env.new( ENV.reject { |k,v| env_keys.include?( k ) } ).render
        end

      end
    end
  end
end
