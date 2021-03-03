class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :mentor

  validates :

def num_of_days
  (end_date - start_date).to_i
end
end

validate :expiration_date_cannot_be_in_the_past

  def user_cant_book_himself
    if user == mentor.user < Date.today
      errors.add(:expiration_date, "can't be in the past")
    end # this end you missed in code
  end
