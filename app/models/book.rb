class Book < ActiveRecord::Base
  has_one :category
  validates :rating, numericality: { only_integer: true }
  validates :rating, :inclusion => 0..100


end
