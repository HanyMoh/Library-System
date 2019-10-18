class Borrow < ApplicationRecord
  belongs_to :user
  belongs_to :book

  before_save :check_borrow_limited, :check_borrow_duration

  def check_bodrrow_limited
    # check limit amount of books based on subscription
    duration_limit = 2
    if user.subscription.level > 3 && book_type.id > 2
      duration_limit = 5
    end
  end

  def check_borrow_duration

  end

end
