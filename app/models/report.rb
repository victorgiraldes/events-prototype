class Report < ApplicationRecord
  belongs_to :user
  belongs_to :comment

  has_many :user, dependent: :destroy
  has_many :comment, dependent: :destroy

  validates_presence_of :user_id, :comment_id
end
