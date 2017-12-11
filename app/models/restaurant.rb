class Restaurant < ApplicationRecord
    has_many :restmembers
    has_many :events, through: :restmembers

    belongs_to :user, class_name: 'User'
end
