module ApplicationHelper
  def title(title = nil)
    @title = title if title
    @title ? "#{@title} - BHRobotics" : "BHRobotics"
  end
  
  def tab_class(tab_title)
    @title && @title.include?(tab_title) ? raw('class="current"') : ''
  end
end