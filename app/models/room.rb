class Room < ApplicationRecord
  has_many :room_users
  has_many :users, through: :members
  has_many :messages

  validates :name, presence: true
end