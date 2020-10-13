class Article < ActiveRecord::Base
  validates :title, :text, :photo, presence: true
  belongs_to :user
end
