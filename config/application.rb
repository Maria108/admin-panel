require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MarvelLyceum
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.assets.initialize_on_precompile = false
    config.serve_static_assets = true
    config.filter_parameters << :password

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end

Raven.configure do |config|
  config.dsn = 'https://dbdb66367936406ab6accf0c06097467:ba1d402342b14ed49b66627b6870d2f0@sentry.io/1213120'
  config.sanitize_fields = Rails.application.config.filter_parameters.map(&:to_s)
end
