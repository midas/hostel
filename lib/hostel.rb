require 'hostel/version'
require 'acclimate'
require 'autoloaded'

module Hostel

  extend Autoloaded

  class << self
    attr_accessor :provider_klass
  end

end
