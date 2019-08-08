class Room < ApplicationRecord
   #has_many :users, dependent: :destroy
   has_many :matches, dependent: :destroy
   validates :roomcode, presence: true, length: {minimum: 4}
   validates :roompassword, presence: true, length: {minimum: 4}
   
end
