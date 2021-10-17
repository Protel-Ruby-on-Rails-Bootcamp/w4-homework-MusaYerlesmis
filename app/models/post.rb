class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  scope :availables, -> { where(share: true) }
end
