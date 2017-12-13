class User < ApplicationRecord
    authenticates_with_sorcery!
    
      validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
      validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
      validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
    
      validates :email, uniqueness: true

      has_many :restaurants
      has_many :restmembers
      has_many :eventmembers
      has_many :events, through: :eventmembers
end
