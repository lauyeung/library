class Book < ActiveRecord::Base
  validates :rating, numericality: { only_integer: true }
  validates :rating, :inclusion => 0..100


end
