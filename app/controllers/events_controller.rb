class EventsController < ApplicationController
	before_filter :authenticate, :only => [:create, :destroy]
	before_filter :authorized_user, :only => :destroy

	def index
    # @title = "All Posts"
    # @events = Event.all.paginate(:page => params[:page])
  end
	
	def create
		@event = current_user.events.build(params[:event])
		if @event.save
			flash[:success] = "Your event has been created!"
			redirect_to root_path
		else
			@feed_items = []
			@feed_item1 = []
			@feed_item2 = []
			@feed_item3 = []
			@feed_item4 = []
			render 'events/new'
		end
	end
	
	def allevent
	    @title = "All Posts"
      @feed_items = Event.all.paginate(:page => params[:page])
  end
	
	def new
	  if signed_in?
  		@event = Event.new
  	else
  	  deny_access
  	end
  	
	end
	
	def destroy
		@event.destroy
		redirect_back_or root_path
	end

  private

    def authorized_user
      @event = Event.find(params[:id])
      redirect_to root_path unless current_user?(@event.user)
    end
    
	

end
