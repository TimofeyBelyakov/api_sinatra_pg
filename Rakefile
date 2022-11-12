require 'sinatra'
require './lib/tasks/db'

namespace :db do
  task :environment do
    require 'sequel'
    ENV['DATABASE_URL']  ||= 'postgres://timbel:kuvvek777tim@localhost/sinatra_seq_test'
    # 'jdbc:postgresql://localhost:5432/sinatra_seq_test'
    ENV['RACK_ENV'] ||= 'test'
    ENV['DATABASE'] = 'sinatra_seq_dev' if ENV['RACK_ENV'] == 'development'
    ENV['DATABASE'] = 'sinatra_seq_test' if ENV['RACK_ENV'] == 'test'
    ENV['DATABASE'] = 'sinatra_seq_prod' if ENV['RACK_ENV'] == 'production'
  end
end
