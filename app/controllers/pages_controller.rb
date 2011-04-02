class PagesController < ApplicationController
  def home
    @feed_items = Event.all.paginate #must include .paginate
  end

  def contact
  end

  def about
  end

  def help
  end
end
