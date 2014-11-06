module Hostel
  module Formatter
    class Env < Acclimate::Formatter::EntityTable

      extend Forwardable

      def initialize( env )
        @env = env
      end

    protected

      attr_reader :env

      def val_column_value( attr )
        ENV.send( :[], attr )
      end

      def attributes
        env.keys
      end

    end
  end
end
