class User < ApplicationRecord
    validates :fname, presence: true, length: {minimum: 1}
    validates :lname, presence: true, length: {minimum: 1}
    validates :username, presence: true, length: {minimum: 1}
    validates :password, presence: true, length: {minimum: 6}
    validates :address, presence: true, length: {minimum: 1}
    validates :wish_list, presence: true, length: {minimum: 5}
end
