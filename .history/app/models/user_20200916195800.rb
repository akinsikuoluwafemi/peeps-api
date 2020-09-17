class User < ApplicationRecord
    has_secure_password

    validates :username, presence: true
validates :username, uniqueness: true
validates :username, length: { minimum: 4 }


validates :first_name, presence: true
validates :first_name, length: { minimum: 4 }

validates :first_name, presence: true
validates :first_name, length: { minimum: 4 }






end
