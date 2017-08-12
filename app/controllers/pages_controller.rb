class PagesController < ApplicationController
  def how_it_works
  	@blogs = Blog.all
  end

  def about_us
  end

  def blog
  end

  def browse_foods
  end
end
