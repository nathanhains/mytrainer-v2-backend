class User < ApplicationRecord
    has_secure_password
    has_many :exercises, :dependent => :delete_all
    has_many :workouts, :dependent => :delete_all

    has_many :followed_users, foreign_key: :follower_id, class_name: 'Friend'
    has_many :followees, through: :followed_users
    
    has_many :following_users, foreign_key: :followee_id, class_name: 'Friend'
    has_many :followers, through: :following_users

    has_many :recipient_users, foreign_key: :recipient_id, class_name: 'Notification'
    has_many :senders, through: :recipient_users
    
    has_many :sender_users, foreign_key: :sender_id, class_name: 'Notification'
    has_many :recipients, through: :sender_users

    validates :name, :username, :email, presence: true
    validates :username, :email, uniqueness: true
end
