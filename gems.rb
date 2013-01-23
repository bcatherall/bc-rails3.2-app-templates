gem 'rake'
gem 'thin'

gem "devise"
gem 'devise-encryptable'

gem 'json'
gem 'awesome_print'
gem 'nokogiri'

gem 'activeadmin'
gem "meta_search", '>= 1.1.0.pre'

gem 'inherited_resources'
gem 'has_scope'
gem 'responders'
gem "cancan"
gem 'kaminari'
gem 'rabl-rails'
gem 'yajl-ruby'
gem 'jquery-rails'

gem_group :assets do
  gem "therubyracer"
end

gem_group :development, :test do
  gem 'rspec',            '>= 2.0.0'
  gem 'rspec-rails',      '>= 2.0.0'
end

gem_group :development do
  gem "capistrano"
  gem "capistrano-ext"
  gem 'bullet'
  gem 'rack-mini-profiler'
  gem "better_errors"
  gem "binding_of_caller"
end

run "bundle install"

capify!

generate("devise:install")
generate("devise", 'user')

rake("db:migrate")
