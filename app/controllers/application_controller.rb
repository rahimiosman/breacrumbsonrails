class ApplicationController < ActionController::Base
  before_action :set_breadcrumbs

  def add_breadcrumb(title, path = nil)
    @breadcrumbs << {
      title: title,
      path: path
    }
  end

  def set_breadcrumbs
    @breadcrumbs =[]
  end
end
