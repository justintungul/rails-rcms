class ApplicationController < ActionController::Base
	before_action :getPageNav

  def getPageNav
  	@pageNav = Page.where("menu_display = true && is_published = true").order(order: :asc)
  end
end
