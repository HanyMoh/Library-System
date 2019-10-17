class Borrow < ApplicationRecord
  belongs_to :user
  belongs_to :book

  after_validation :check_borrow_limited

  def check_bodrrow_limited
    
  end

  def check_borrow_duration

  end
end
