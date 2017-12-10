class Room < ApplicationRecord
   #has_many :users, dependent: :destroy
   has_many :matches
   validates :roomcode, presence: true, length: {minimum: 4}
   validates :roompassword, presence: true, length: {minimum: 4}
   
end
