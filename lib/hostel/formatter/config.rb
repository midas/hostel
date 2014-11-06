require 'forwardable'

module Hostel
  module Formatter
    class Config < Acclimate::Formatter::EntityTable

      extend Forwardable

      def initialize( config )
        @config = config
      end

    protected

      attr_reader :config

      def_delegators :config, :project_path

      def attributes
        %w(
          project_path
        )
      end

    end
  end
end
