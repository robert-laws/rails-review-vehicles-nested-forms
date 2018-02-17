module CommentsHelper
  def create_time(comment)
    comment.created_at.strftime("Created at: %l:%M %p")
  end
end
