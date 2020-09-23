module ApplicationHelper

	def channal_status(type)
		case type
		when true
			return "<span class='badge badge-success'>Active</span>".html_safe
		when false
			return "<span class='badge badge-warning'>Disabled</span>".html_safe			
		end
	end

end
