require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module MarugotoBackend
    class Application < Rails::Application

        #config.autoload_paths += Dir[Rails.root.join('app','models','{*/}')]
        config.assets.precompile += Ckeditor.assets

        config.assets.precompile += %w( ckeditor/my_config.js ckeditor/my_styles.js ckeditor/	my_contents.css ckeditor/filebrowser/*)


        config.serve_static_assets = true
    end
end
