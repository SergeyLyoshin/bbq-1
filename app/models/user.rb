class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable

  has_many :events, dependent: :destroy

  validates :name, presence: true, length: { maximum: 35 }
end