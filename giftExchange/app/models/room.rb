class Room < ApplicationRecord
   has_and_belongs_to_many :users
   validates :roomcode, presence: true, length: {minimum: 4}
   validates :roompassword, presence: true, length: {minimum: 4}
   
end
