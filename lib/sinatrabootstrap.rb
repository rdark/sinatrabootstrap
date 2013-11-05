$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'active_support/core_ext'

module Sinatrabootstrap
  autoload :App,            'sinatrabootstrap/app'
  autoload :Helpers,        'sinatrabootstrap/helpers'
  autoload :Runner,         'sinatrabootstrap/services/runner'

  class UnrecognizedTaskVersion < Exception; end
end
