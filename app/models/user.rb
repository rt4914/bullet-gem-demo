class User < ApplicationRecord
  has_many :user_hobbies, dependent: :destroy
  has_many :hobbies, through: :user_hobbies, dependent: :destroy
end
