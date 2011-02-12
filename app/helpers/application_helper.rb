module ApplicationHelper
  def title(title = nil)
    @title = title if title
    @title ? "#{@title} - BHRobotics" : "BHRobotics"
  end
  
  def tab_class(tab_title)
    @title && @title.include?(tab_title) ? raw('class="current"') : ''
  end
  
  def session_link
    if guest?
      link_to 'Sign in', session_path
    else
      link_to 'Sign out', session_path, :method => :delete
    end
  end
end