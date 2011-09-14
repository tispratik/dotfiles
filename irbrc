#!/usr/bin/env ruby

require 'wirble'
require 'hirb'
require 'ap'

# load wirble
Wirble.init
Wirble.colorize

# load hirb
Hirb::View.enable

IRB.conf[:AUTO_INDENT] = true
# Remove the annoying irb(main):001:0 and replace with >>
IRB.conf[:PROMPT_MODE]  = :SIMPLE

# Log to STDOUT if in Rails
if ENV.include?('RAILS_ENV') # For Rails 2
  if !Object.const_defined?('RAILS_DEFAULT_LOGGER')
    require 'logger'
    Object.const_set('RAILS_DEFAULT_LOGGER', Logger.new(STDOUT))
  end

  def sql(query)
    ActiveRecord::Base.connection.select_all(query)
  end
  
  if ENV['RAILS_ENV'] == 'test'
    require 'test/test_helper'
  end
elsif defined?(Rails) && !Rails.env.nil? # For Rails 3
  if Rails.logger
    Rails.logger =Logger.new(STDOUT)
    ActiveRecord::Base.logger = Rails.logger
  end
  if Rails.env == 'test'
    require 'test/test_helper'
  end
end

class Object
 # list methods which aren't in superclass
 def local_methods(obj = self)
   (obj.methods - obj.class.superclass.instance_methods).sort
 end
end 

load File.dirname(__FILE__) + '/.railsrc' if (defined?(Rails) || ENV.include?('RAILS_ENV'))

