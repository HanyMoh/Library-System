class Book < ApplicationRecord
  belongs_to :auther
  belongs_to :topic
  belongs_to :publisher
  belongs_to :book_type
  has_many :borrows
end
