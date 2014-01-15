module ApplicationHelper

	# Return the title on a per page basis
	def title
		base_title = "Sageo Technologies"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
	end

end
