class EventsController < ApplicationController
  
	before_filter :authenticate, :only => [:create, :destroy]
	before_filter :authorized_user, :only => :destroy

	def index
    @filter = params[:filter]
    @order = params[:order]
    if (@filter == "All")
      @feed_items = Event.order(@order)
    else
      @feed_items = Event.where(:category => @filter).order(@order)
    end
  end
	
	def free
    @feed_items = Event.where(:category => 'Free')
  end
	
	def cheap
    @feed_items = Event.where(:category => 'Cheap')
  end
  
  def happening_soon
    @feed_items = Event.order("start_date ASC")
  end
	
	def create
		@event = current_user.events.build(params[:event])
		if @event.save
			flash[:success] = "Your event has been created!"
			redirect_to root_path
		else
			@feed_items = []
			render 'events/new'
		end
	end
  
  def show
    @event = Event.find(params[:id])
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
		redirect_to :back
	end

  private

    def authorized_user
      @event = Event.find(params[:id])
      redirect_to root_path unless current_user?(@event.user)
    end
    
end

