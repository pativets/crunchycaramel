class PagesController < ApplicationController
  def home
    @feed_items = Event.limit(25)
  end

  def contact
  end

  def about
  end

  def help
  end
end
