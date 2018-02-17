class Event < ApplicationRecord
  has_many :event_comments, dependent: :destroy
  has_many :comments, through: :event_comments

  validates :title, presence: true

  accepts_nested_attributes_for :comments

  def comments_attributes=(comment_attributes)
    comment_attributes.values.each do |comment_attribute|
      if !comment_attribute["content"].blank?
        comment = Comment.find_or_create_by(comment_attribute)
        self.comments << comment
      end
    end
  end
end
