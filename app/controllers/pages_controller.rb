class PagesController < ApplicationController
  def home
      @title = "Home"
      @feed_item1 = Event.find(4)
      @feed_item2 = Event.find(5)
      @feed_item3 = Event.find(6)
      @feed_item4 = Event.find(4)
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
