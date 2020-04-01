class User < ApplicationRecord
    # Adding validations to user model
    validates :name, :email, :phone_number, presence: true
end
