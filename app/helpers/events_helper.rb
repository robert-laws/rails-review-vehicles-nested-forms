module EventsHelper
  def event_date_time(event)
    event.event_date.strftime("%A, %b %e, at %l:%M %p")
  end
end
