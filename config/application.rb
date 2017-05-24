require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module BookshelfRails
  class Application < Rails::Application
    config.time_zone = 'Moscow'
    config.i18n.default_locale = :ru
    config.i18n.available_locales = [:ru, :en]
    config.i18n.fallbacks = true
  end
end
