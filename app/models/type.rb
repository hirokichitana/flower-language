class Type < ApplicationRecord
  has_many :flowers

  validates :gorgeous, presence: true
  validates :simple, presence: true
  validates :formal, presence: true
  validates :casual, presence: true
end
