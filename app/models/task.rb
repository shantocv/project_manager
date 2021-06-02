class Task < ApplicationRecord
  belongs_to :user

  validates :title, :description, :status, :deadline, presence: true
end
