class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates_presence_of :text, :user_id, :event_id
end
