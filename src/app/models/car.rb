class Car < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  belongs_to :cleaner, class_name: 'User'
end
