class Book < ApplicationRecord
  belongs_to :auther
  belongs_to :topic
  belongs_to :publisher
  belongs_to :book_type
  has_many :borrows

  def current_stock
    # find all borrows books where duration not ended
    # min copies from count durations books
  end

  def stock
    copies
  end
end
