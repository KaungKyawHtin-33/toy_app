class User < ApplicationRecord
    has_many :microposts
    validates :name, presence: true, length: { minimum: 3, maximum: 20 }
    validates :email, format: { with: /\A(.+)@(.+)\z/, message: "invalid"  }, uniqueness: { case_sensitive: false }
end
