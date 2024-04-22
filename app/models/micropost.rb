class Micropost < ApplicationRecord
    belongs_to :user
    validates :content, length: { minimum: 5, maximum: 50 }
    # validates :user_id,  presence: true
end
