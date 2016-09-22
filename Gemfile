source 'https://rubygems.org'

gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'semantic-ui-sass', github: 'doabit/semantic-ui-sass'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'typescript-rails'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'simple_form'
gem 'cocoon'

#editor gems
gem 'cloudinary'
gem 'mini_magick'
gem 'carrierwave'
gem 'ckeditor', github: 'kaanoo2904/ckeditor'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem 'counter_culture'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :test do
    gem 'sqlite3'
end

group :development do
    gem 'web-console'
    gem 'listen', '~> 3.0.5'
    gem "better_errors"

end

group :development, :test do
    gem 'byebug', platform: :mri
    gem 'rspec-rails', '~> 3.5'
    gem 'factory_girl_rails'
    gem 'rails-controller-testing'
    gem 'faker'
    gem 'shoulda-matchers'
end

group :production, :development do
    gem 'pg'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
