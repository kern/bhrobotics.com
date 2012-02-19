class ApplicationController < ActionController::Base
  layout :layout_with_pjax
  protect_from_forgery

  private

  def layout_with_pjax
    if request.headers["X-PJAX"]
      "pjax"
    else
      "application"
    end
  end
end
