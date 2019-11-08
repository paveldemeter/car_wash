class Car < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_one :payment
end
