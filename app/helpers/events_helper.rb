module EventsHelper
  def cheap_event?
    @event.event_type == "Cheap"
  end
end
