lock "~> 3.11.0"

set :application, "auth"
set :repo_url, "git@github.com:diegopiccinini/central_auth.git"

set :rvm_type, :system
set :rvm_ruby_version, '2.3.1@rails522'

ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

append :linked_files, "config/database.yml", "config/secrets.yml", ".env.production", "config/puma.rb"

append :linked_dirs, "log", "tmp"

set :default_env, { 'SECRET_KEY_BASE' => ENV['SECRET_KEY_BASE'], 'SUPPORT_EMAIL' => ENV['SUPPORT_EMAIL'] }

set :rails_env, "production"
set :puma_conf, "#{shared_path}/config/puma.rb"
