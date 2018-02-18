class Event < ApplicationRecord
  has_many :event_comments, dependent: :destroy
  has_many :comments, through: :event_comments

  validates :title, presence: true

  def self.from_today
    where("created_at >= ?", Time.zone.today.beginning_of_day)
  end

  def self.old_news
    where("created_at < ?", Time.zone.today.beginning_of_day)
  end

  def self.registrations_threshold(limit)
    if limit == "Less than Twenty-Five"
      where("registrations < ?", 25)
    elsif limit == "Twenty-Five to Fifty"
      where("registrations >= ? AND registrations < ?", 25, 50)
    else
      where("registrations > ?", 50)
    end
  end

  accepts_nested_attributes_for :comments

  def comments_attributes=(comment_attributes)
    comment_attributes.values.each do |comment_attribute|
      if comment_attribute["content"].present?
        comment = Comment.find_or_create_by(comment_attribute)
        if !self.comments.include?(comment)
          self.comments << comment
        end
      end
    end
  end
end
