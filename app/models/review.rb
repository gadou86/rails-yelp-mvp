class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true, allow_blank: false
  validates :rating, numericality: { only_integer: true }, inclusion: { in: 0..5} 
  # validates_inclusion_of :reviews, :in => 0..5

end
