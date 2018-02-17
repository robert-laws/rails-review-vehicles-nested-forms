class Comment < ApplicationRecord
  has_many :event_comments
  has_many :events, through: :event_comments

  def upcase_content
    content.upcase
  end
end
