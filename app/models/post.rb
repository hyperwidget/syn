class Post < ActiveRecord::Base
  attr_accessible :category, :content, :datePosted, :title
end
