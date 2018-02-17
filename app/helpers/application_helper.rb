module ApplicationHelper
  def current_time
    content_for :current_time, "Today is #{DateTime.now.strftime("%A, %B %e, %Y")}"
  end

  def title(text)
    content_for :title, text
  end
end
