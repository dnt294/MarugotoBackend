require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module MarugotoBackend
    class Application < Rails::Application

        config.autoload_paths += Dir[Rails.root.join('app','models','{*/}')]

        config.serve_static_assets = true
    end
end
