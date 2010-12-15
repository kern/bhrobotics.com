module ApplicationHelper
  def title(title = nil)
    @title = title if title
    @title ? "#{@title} - BHRobotics" : "BHRobotics"
  end
end