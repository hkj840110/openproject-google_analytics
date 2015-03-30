module Openproject
  module GoogleAnalytics
    class Hooks < Redmine::Hook::ViewListener
      include ::GoogleAnalytics::Rails::ViewHelpers

      def view_layouts_base_body_bottom(context = {})
        return google_analytics_script
      end

      def google_analytics_script
        ga_tracker = OpenProject::Configuration['ga_track_code']
        unless ga_tracker.nil?
          GA.tracker = ga_tracker
          content_tag("span", analytics_init, class: 'ga_analytics')
        end
      end
    end
  end
end
