class Post < ApplicationRecord
  belongs_to :user
  validates :body, :title, presence: true
end
