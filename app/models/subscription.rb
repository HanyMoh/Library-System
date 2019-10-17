class Subscription < ApplicationRecord
  has_many :users, -> { customers }, class_name: 'USer'
end
