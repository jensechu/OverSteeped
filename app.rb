require 'sinatra'
require 'sinatra/activerecord'
require './environments'

class Category < ActiveRecord::Base
  has_many :teas, dependent: :destroy
end

class Tea < ActiveRecord::Base
end

get "/" do
  numCategories = Category.all.length
  @categories = Category.take(numCategories)

  numTeas = Tea.all.length
  @teas = Tea.find([1, numTeas])

  erb :"teas/index"
end
