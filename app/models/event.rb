class Event < ApplicationRecord
    has_many :eventmembers
    has_many :users, through: :eventmembers
    accepts_nested_attributes_for :eventmembers, allow_destroy: true
    accepts_nested_attributes_for :users, allow_destroy: true
    
    has_many :restmembers
    has_many :restaurants, through: :restmembers

    belongs_to :user, class_name: 'User'    
end
