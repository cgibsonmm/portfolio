class Post < ApplicationRecord
  validates :title, presence: true
  validates :title, length: { in: 3..100 }

  validates :body, presence: true
  validates :body, length: { minimum: 20}
end
