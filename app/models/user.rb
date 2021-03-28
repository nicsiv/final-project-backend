class User < ApplicationRecord
    has_many :furniture

    validates :username, presence: true, uniqueness: true
end
