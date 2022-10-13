class User < ApplicationRecord
    has_many :purchases
    has_many :properties, through: :purchases
    has_secure_password
end
