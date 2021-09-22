class Post < ApplicationRecord
  validates :title, :content, presence: true
  has_rich_text :content
  belongs_to :user
  has_many :comments
end
