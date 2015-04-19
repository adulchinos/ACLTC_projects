class PagesController < ApplicationController
	def something
		@current_time = Time.now
		@title = "Something"
	end
	def content
		@title = "about"
	end
	def blog
		@title = "Blog"
	end
end
