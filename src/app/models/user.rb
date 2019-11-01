class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cars, foreign_key: 'owner_id'
  has_one :car_cleaning, class_name: 'Car', foreign_key: 'cleaner_id'
end
