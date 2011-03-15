class PagesController < ApplicationController
  def home
      @title = "Home"
      @feed_items = Event.all.paginate(:page => params[:page])
      
      # @feed_item1, @feed_item2, etc
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end

end
