source "https://rubygems.org"

ruby "2.3.1"

gem "autoprefixer-rails"
gem "delayed_job_active_record"
gem "jquery-rails"
gem "pg"
gem "rails", "~> 4.2"
gem "rails-i18n", "~> 4.0.4"
gem "sass-rails", "~> 5.0"
gem "simple_form"
gem "initjs"
gem "uglifier"
gem "devise"
gem "coffee-rails"
gem "slim-rails", "~> 3.0.1"
gem "bootstrap-sass"
gem "font-awesome-rails"
gem "meta-tags"
gem "carrierwave"
gem "fog-aws"
gem "mini_magick"

group :development do
  gem "thin"
  gem "quiet_assets"
  gem "spring"
  gem "spring-commands-rspec"
  gem "letter_opener"
end

group :development, :test do
  gem "awesome_print"
  gem "bullet"
  gem "bundler-audit", ">= 0.5.0", require: false
  gem "dotenv-rails"
  gem "factory_girl_rails"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.4.0"
end

group :development, :staging do
  gem "rack-mini-profiler", require: false
end

group :test do
  gem "capybara-webkit"
  gem "database_cleaner"
  gem "formulaic"
  gem "launchy"
  gem "shoulda-matchers"
  gem "simplecov", require: false
  gem "timecop"
  gem "webmock"
end

group :staging, :production do
  gem "rack-timeout"
  gem "passenger", "~> 5.0"
  gem "rails_12factor"
end
