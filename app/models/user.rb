class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true, uniqueness: true
  validates :password, length: { minimum: 4, maximum: 8 },
            numericality: { only_integer: true, message: 'パスワードは半角数字４〜８桁にして下さい' }
  
  has_many :comments

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :age, :sex
end
