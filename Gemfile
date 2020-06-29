ruby '~> 2.7'
source 'https://rubygems.org'

# Engine
gem 'middleman', '~> 4.2'
gem 'middleman-autoprefixer', '~> 2.7'

# Templating
gem 'haml'

# Assets
gem 'sassc', '~> 2.4'
gem 'bootstrap-sass',   require: false
gem 'jquery-middleman', require: false

# Server
gem 'puma', require: 'puma/rack_default'

# DEVELOPMENT
group :development do
    gem 'listen', '~> 3.0'
    gem 'middleman-pry'
end

# Extension fails to load when the gem is in a group
# https://github.com/middleman/middleman-livereload/issues/101
gem 'middleman-livereload', "~> 3.4"
