source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use sqlite3 as the database for Active Record
gem 'pg', '~> 0.17.1'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use paperclip gem for image handling
gem 'paperclip', '~> 4.2.0'

# Use ActiveAdmin
gem 'devise', '~> 3.3.0'
gem 'activeadmin', github: 'gregbell/active_admin'
# gem "meta_search"

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use Friendly id to mask the id on the URLs
gem 'friendly_id', '~> 5.1.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Use will_paginate for pagination
gem 'will_paginate', '~> 3.0.7'
gem 'will_paginate-bootstrap', '~> 1.0.1'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# Use country_select for countries handling
gem 'country_select', '~> 1.3.1'

# Use rspec for testing
gem 'rspec', '~> 3.0.0'

# Use Haml to preprocess html code
gem 'haml', '~> 4.0.5'
gem 'haml-rails', '~> 0.5.1'

# User Twitter Bootstrap
gem 'therubyracer', '~> 0.12.1'
gem 'less-rails', '~> 2.5.0'
gem 'twitter-bootstrap-rails', '~> 2.2.8'
gem "font-awesome-rails"

# Specific gems for development 
group :development do
  gem 'better_errors', '~> 2.0.0'
  gem 'binding_of_caller', '~> 0.7.2'
end

group :production, :staging do
  gem 'rails_12factor'
end

group :development, :test do
	gem 'rspec-rails', '~> 3.0.2'
	gem 'factory_girl_rails', '~> 4.4.1'
	gem 'simplecov', '~> 0.9.0'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end