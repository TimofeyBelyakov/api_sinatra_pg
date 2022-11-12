require 'sequel'
require 'sequel/extensions/seed'
require 'pg'
require 'json'
require 'multi_json'
require 'sinatra'
require 'sinatra/base'
require 'sinatra/namespace'

DB = Sequel.connect(
  adapter: :postgres,
  database: 'sinatra_seq_test',
  host: 'localhost',
  password: 'kuvvek777tim',
  user: 'timbel',
  max_connections: 10,
  )

%w{ controllers models routes }.each { |dir| Dir.glob("./#{ dir }/*.rb", &method(:require)) }

before do
  content_type 'application/json'
end

def collection_to_api(collection)
  MultiJson.dump(collection.map { |s| s.to_api })
end

get '/' do
  "Hi! I am api_sinatra_postgres!\n\n"
end
