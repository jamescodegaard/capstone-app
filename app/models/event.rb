class Event < ApplicationRecord
  belongs_to :business
  has_many :event_tags
  has_many :tags, through: :event_tags

  def formatted_date
    date.strftime("%m/%d/%Y")
  end

  def formatted_time
    date.strftime("%I:%M%p")
  end

end
