class Event < ApplicationRecord
    has_many :eventmembers
    has_many :users, through: :eventmembers
    has_many :restmembers
    has_many :restaurants, through: :restmembers

    accepts_nested_attributes_for :restmembers, allow_destroy: true
    accepts_nested_attributes_for :eventmembers, allow_destroy: true
    accepts_nested_attributes_for :users, allow_destroy: true
    accepts_nested_attributes_for :restaurants, allow_destroy: true
    


    belongs_to :user, class_name: 'User'    
end
