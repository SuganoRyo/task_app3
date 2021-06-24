class Taskapp < ApplicationRecord
  validates :title, presence: true
  validates :start, presence: true
  validates :end, presence: true
  validates :all, presence: true
  validates :memo, length: { maximum: 200 }
end