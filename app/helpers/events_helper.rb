module EventsHelper
  def cheap_event?
    @event.category == "Cheap"
  end
end
