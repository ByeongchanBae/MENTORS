class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :mentor

def num_of_days
  (end_date - start_date).to_i
end
end
