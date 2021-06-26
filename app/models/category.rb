class Category < ApplicationRecord
    has_many :exercises, :dependent => :delete_all
end
