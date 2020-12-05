class Figure < ApplicationRecord
  has_one_attached :photo
  
  validates :title, :text, :photo, presence: true
  
  belongs_to :user
end
