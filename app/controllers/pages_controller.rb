class PagesController < ApplicationController
  def home
    @title = "Home"
    @feed_items = Event.all.paginate #must include .paginate
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end

  def help
    @title = "Help"
  end
end
