class Training < ApplicationRecord
  validates :title, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :fatigue
end
