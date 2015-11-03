module ApplicationHelper

def signed_in?
       if session[:user_id].nil?
	return
       else
	@current_user = User.find_by_id(session[:user_id])
       end
  end
  
def euro(amount)
		number_to_currency(amount, :unit => '&euro;')
	end
end

def sortable(column, title = nil)
	title ||= column.titleize
	css_class = column == sort_column ? "current #{sort_direction}" : nil
	direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
	link_to title, {:sort => column, :direction => direction}, {:class => css_class}
end
