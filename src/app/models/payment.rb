class Payment < ApplicationRecord
  belongs_to :cleaner, class_name: 'User'
  belongs_to :car
end

