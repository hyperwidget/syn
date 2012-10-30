class Post < ActiveRecord::Base
  attr_accessible :body, :datePosted, :title
  has_and_belongs_to_many :tags
  belongs_to :categories

	def self.search(search)
	  if search
	    find(:all, :conditions => ['title LIKE ? OR body LIKE ?', "%#{search}%", "%#{search}%"])
	  else
	    find(:all)
	  end
	end

end
