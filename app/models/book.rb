class Book < ApplicationRecord
  validates :body, length: { maximum: 200 }

  validates :title, {presence: true}
  validates :body, {presence: true}
  belongs_to :user
end
