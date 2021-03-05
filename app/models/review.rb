class Review < ApplicationRecord
  belongs_to :mentor

  validates :content, presence: true
  validates :rating, inclusion: { in: 0..5 }
end
