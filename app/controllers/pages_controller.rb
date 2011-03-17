class PagesController < ApplicationController
  def home
      @title = "Home"
       @feed_items = Event.all.paginate(:page => params[:page])
      # @feed_item1, @feed_item2, etc
  #    @feed_item1 = Event.find(1)
  #    @feed_item2 = Event.find(2)
  #    @feed_item3 = Event.find(3)
  #    @feed_item4 = Event.find(4)
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
