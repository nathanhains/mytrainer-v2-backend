class User < ApplicationRecord
    has_secure_password
    has_many :exercises, :dependent => :delete_all
    has_many :workouts, :dependent => :delete_all

    validates :name, :username, :email, presence: true
    validates :username, :email, uniqueness: true
end
