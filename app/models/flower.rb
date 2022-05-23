class Flower < ApplicationRecord
  belongs_to :taist
  belongs_to :user

  validates :flower_name, presence: true
  validates :explanation, presence: true
end
