class Post < ApplicationRecord
  validates :title, :content, presence: true
  has_rich_text :content
  belongs_to :user
  has_many :comments

  def subject
    title
  end

  def last_comment
    comments.last
  end
end
