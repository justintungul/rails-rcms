class HomeController < ApplicationController
  def show
  	@pages = Page.where("is_featured = true")
  end
end
