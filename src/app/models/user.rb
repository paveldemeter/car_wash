class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cars, foreign_key: 'owner_id', dependent: :destroy

  has_one :cleaning_payment, class_name: 'Payment', foreign_key: 'cleaner_id'
  has_one :car_cleaning, through: :cleaning_payment, source: :car

  has_many :cleaned_payments, through: :cars, source: :payment

  has_and_belongs_to_many :roles, :join_table => :users_roles

  has_one_attached :image

  def owns_car?(car)
    cars.include?(car)
  end
end



