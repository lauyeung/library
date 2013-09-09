class Book < ActiveRecord::Base
  has_many :categories, :through => :categorizations
  has_many :categorizations

  validates :rating, numericality: { only_integer: true }
  validates :rating, :inclusion => 0..100




end
