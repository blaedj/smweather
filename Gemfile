source 'https://rubygems.org'

ruby "2.0.0"
gem 'rails', '4.0'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

#gem 'sqlite3'
gem 'pg' #use postgresql database, for compat. w/ heroku
gem 'sass-rails',  '~> 4.0.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'uglifier', '>= 2.1.1'
gem 'compass-rails', "~> 2.0.alpha.0"
gem 'zurb-foundation', '~> 4.0.0'
gem 'twilio-ruby'


group :development, :test do
  gem 'rspec-rails', '2.11.0'
  gem 'guard-rspec', '1.2.1'
#  gem 'guard-spork', '>= 1.4.2'
  gem 'childprocess', '>= 0.3.9'
#  gem 'spork'
end



# See https://github.com/sstephenson/execjs#readme
# for more supported runtimes
# gem 'therubyracer', :platforms => :ruby

gem 'jquery-rails'

group :test do
  gem 'capybara', '1.1.2'
  gem 'rb-inotify', '0.9.0'
  gem 'libnotify', '0.5.9'
end


# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

group :production do
   gem 'rails_12factor'
  # Use unicorn as the app server
  gem 'unicorn'
 end
# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
