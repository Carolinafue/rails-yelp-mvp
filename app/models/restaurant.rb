class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: :true, uniqueness: true
  validates :category, inclusion: { in: CATEGORIES }
  
end
