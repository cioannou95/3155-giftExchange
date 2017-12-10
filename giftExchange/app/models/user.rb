class User < ApplicationRecord
    #belongs_to :rooms
    def self.from_omniauth(auth)
        where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
            user.provider = auth.provider
            user.uid = auth.uid
            user.name = auth.info.name
            user.oauth_token = auth.credentials.token
            user.oauth_expires_at = Time.at(auth.credentials.expires_at)
            user.save!
         end
    end
    
    #validates :fname, presence: true, length: {minimum: 1}
    #validates :lname, presence: true, length: {minimum: 1}
    #validates :username, presence: true, length: {minimum: 1}
    #validates :password, presence: true, length: {minimum: 6}
    #validates :address, presence: true, length: {minimum: 1}
    #validates :wish_list, presence: true, length: {minimum: 5}
    
    
end
