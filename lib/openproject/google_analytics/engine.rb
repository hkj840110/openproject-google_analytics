module Openproject
  module GoogleAnalytics
    class Engine < ::Rails::Engine
      engine_name :openproject_google_analytics
      include OpenProject::Plugins::ActsAsOpEngine

      register 'openproject-google_analytics',
        author_url: 'http://finn.de',
        requires_openproject: '4.1.0'
      
      initializer 'openproject_google_analytics.register_hooks' do
        require 'openproject/google_analytics/hooks'
      end
    end
  end
end
