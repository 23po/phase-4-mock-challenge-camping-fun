class Activity < ApplicationRecord


    def change
        
    end

    has_many :signups, dependent: :destroy
    has_many :campers, through: :signups
end
