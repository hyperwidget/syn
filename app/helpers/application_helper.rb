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
end
