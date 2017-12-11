class Restmember < ApplicationRecord
    belongs_to :event
    belongs_to :restaurant
end
