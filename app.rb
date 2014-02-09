require 'sinatra'
require 'sinatra/activerecord'
require './environments'

class Category < ActiveRecord::Base
  has_many :teas, dependent: :destroy
end

class Tea < ActiveRecord::Base
end

get "/" do
  @posts = Post.order("created_at DESC")
  @title = "Welcome."
  erb :"posts/index"
end
