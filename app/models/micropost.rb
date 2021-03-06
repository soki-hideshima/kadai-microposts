class Micropost < ApplicationRecord

   validates :content, presence: true, length: { maximum: 255 }
   
  belongs_to :user
  has_many :favorites 
  has_many :like_users, through: :favorites, source: :user
  
end
