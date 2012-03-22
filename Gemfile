source 'http://rubygems.org'

gem 'rails', '~> 3.2.2'

platforms :jruby do
  gem 'activerecord-jdbc-adapter', :require => false
  gem 'jruby-openssl'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.2.0"
  gem 'uglifier'
  gem 'compass-rails'
  gem 'ejs'
end

gem 'jquery-rails'
gem 'rails-backbone'

gem 'devise'
gem 'cancan'
gem 'transitions', '0.0.9', :require => ["transitions", "active_record/transitions"]

gem 'fastercsv', '1.5.3', :platforms => :ruby_18
# (using standard csv lib if ruby version is 1.9)

group :production do
  gem 'pg'
end

group :development, :test do
  platforms :jruby do
    gem 'activerecord-jdbcsqlite3-adapter', :require => false
  end
  platforms :ruby do
    gem 'sqlite3'
  end
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'jasmine', '1.1.0'
  gem 'capybara'
  gem 'database_cleaner'
end
