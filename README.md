Intital GEMS added
--------------------------------

  gem 'brakeman', '~> 5.0', '>= 5.0.1'
  gem 'bullet', '~> 6.1', '>= 6.1.4'
  gem 'factory_bot_rails', '~> 6.2'
  gem 'faker', '~> 2.18'
  gem 'rspec-rails', '~> 5.0', '>= 5.0.1'
  gem 'rubocop-rails', '~> 2.10', '>= 2.10.1', require: false


Bullet GEM
---------------------------------

bundle exec rails g bullet:install

Brakeman
----------------------------------------------------------------
brakeman

Rubocop Rails
----------------------------------------------------------------

create .rubocop.yml

add "require: rubocop-rails" in .rubocop.yml

bundle exec rubocop


rspec-rails
----------------------------------------------------------------

rails generate rspec:install
mkdir spec/support
touch spec/support/factory_bot.rb


================================================================
factory.rb
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end
================================================================

add "Dir[Rails.root.join("spec/support/**/*.rb")].sort.each { |file| require file }" in rails_helper.rb below
"require 'rspec/rails'"

bundle exec rspec



devise
---------------------------------

rails g devise:install

development.rb
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

rails generate devise User


Add Admin Lte
--------------------------------

https://dev.to/brayvasq/integrate-andminlte-with-ruby-on-rails-6-od7