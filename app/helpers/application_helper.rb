module ApplicationHelper
  DEFAULT_TITLE = "BHRobotics - FIRST Team 1515 MorTorq"
  TITLE_SUFFIX = "BHRobotics"

  def title(title)
    @title = title
  end

  def render_title
    if @title.present?
      "#{@title} - #{TITLE_SUFFIX}"
    else
      DEFAULT_TITLE
    end
  end
end
