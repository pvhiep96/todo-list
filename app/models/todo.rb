class Todo < ApplicationRecord
  belongs_to :user

  scope :complete, -> { where(is_completed: true)}
  scope :not_complete, -> { where(is_completed: nil)}
end
