class Training < ApplicationRecord
  validates :title, presence: true

  belongs_to :team
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :fatigue
end
