class Comment < ApplicationRecord
  validates :comment, presence: true

  belongs_to :team
  belongs_to :user

end
