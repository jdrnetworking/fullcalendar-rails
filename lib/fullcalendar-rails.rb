require "fullcalendar-rails/version"

module Fullcalendar
  module Rails
    class Engine < ::Rails::Engine
      if Rails.version >= '3.1'
        initializer "fullcalendar-rails.precompile-hook" do |app|
          app.config.assets.precompile += %w(fullcalendar.js fullcalendar.min.js gcal.js fullcalendar.css fullcalendar.print.css)
        end
      end
    end
  end
end
