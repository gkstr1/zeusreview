class Review < ActiveRecord::Base
    belongs_to :user
    validates :rating, :comment, presence: true
    validates :rating, numericality: {
        only_integer: true, 
        greater_than_or_equal_to: 1, 
        less_than_or_equal_to: 5, 
        message: "can only be a number from 1 to 5"
        }
end
