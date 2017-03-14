class Workout < ApplicationRecord
  belongs_to :user
  has_many :weights, dependent: :destroy
  has_many :cardios, dependent: :destroy
end
