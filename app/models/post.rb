class Post < ActiveRecord::Base
  attr_accessible :body, :datePosted, :title
  has_and_belongs_to_many :tags
end
