class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniquenes:true, format: /@/
  # format: /@/ require @ in email. 
  has_many :workouts, dependent: :destroy
end
