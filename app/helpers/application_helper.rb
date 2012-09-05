module ApplicationHelper

	def full_title(page_title)
		base_title = "syntaxSymposium"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end

	def hunterContact	
		gravatar_id = Digest::MD5::hexdigest("rawkamatic@gmail.com")
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=150"
		image_tag(gravatar_url, :alt=> "Hunter Jansen", :class=> "gravatar")
	end

	def getTitle(enum)
			link_to Post.find(enum).title, "posts/#{enum}"
	end

	def getDate enum
			Post.find(enum).datePosted
	end

	def getCat enum
			Category.find(Post.find(3).category_id).name
	end

	def getBody enum
			Post.find(enum).body
	end

	def getTags enum
			Post.find(enum).tags(:select => :name)
	end

	def getPost enum
			Post.find(enum)
	end

	def validPost enum
		if enum <= Post.count
			return true
		end
	end

	def getLastFive
		Post.find(:all, :order => "id desc", :select=>:id, :limit => 5).collect(&:id)
	end

end
