module ApplicationHelper

		def channal_status(type)
			case type
			when true
				return "<span class='badge badge-success'>Active</span>".html_safe
			when false
				return "<span class='badge badge-warning'>Disabled</span>".html_safe			
			end
		end

	  def set_Date(dt)
	    return dt.strftime("%m/%d/%Y")
	  end

	  def set_Time(dt)
	    return dt.strftime("%I:%M %p")
	  end
	  
	  def set_Date_with_time(dt)
	    return dt.strftime("%m/%d/%Y %I:%M %p")
	  end

	  def parse_date_with_time(dt)
	    unless dt.to_s.empty?
	      return DateTime.strptime(dt,'%I:%M %p').strftime('%I:%M %p')
	    end
	    return dt
	  end

end
