class Event < ApplicationRecord
  belongs_to :business
  has_many :event_tags
  has_many :tags, through: :event_tags
end
