module ApplicationHelper
  DEFAULT_TITLE = "BHRobotics - FIRST Team 1515 MorTorq"
  TITLE_SUFFIX = "BHRobotics"

  def title(title)
    @title = title
  end

  def page_class(page_class)
    @page_class = page_class
  end

  def render_title
    if @title.present?
      "#{@title} - #{TITLE_SUFFIX}"
    else
      DEFAULT_TITLE
    end
  end

  def render_page_class
    if @page_class.present?
      "#{@page_class} page"
    else
      ""
    end
  end
end
