class Post < ApplicationRecord
  belongs_to :user
  has_many :favorites
  validates :title, presence: true
end
