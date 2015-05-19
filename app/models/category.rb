class Category < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :videos, -> { order("title") }
end
