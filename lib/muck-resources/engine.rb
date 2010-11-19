require 'muck-resources'
require 'rails'

module MuckResources
  class Engine < ::Rails::Engine
    
    def muck_name
      'muck-resources'
    end
        
  end
end
