class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 1 }
  validates :body, presence: true, length: { minimum: 1, maximum: 280 }
  validates :user_id, presence: true
  validates :author, presence: true

  belongs_to :user
end
