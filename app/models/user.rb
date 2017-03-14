class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniquenes:true
  has_many :workouts, dependent: :destroy
end
