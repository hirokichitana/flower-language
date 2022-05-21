class Flower < ApplicationRecord
  belongs_to :taist
  belongs_to :user

  validates :name, presence: true
end
