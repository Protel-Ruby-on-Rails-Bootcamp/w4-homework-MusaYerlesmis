class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  def commentter
    self.user ? user.email : 'Unknown'
  end
  scope :accepteds, -> { where(accepted: true) }
  def status
    if accepted
      'Public'
    else
      'Private'
    end
  end
end
