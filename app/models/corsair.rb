class Corsair < ApplicationRecord
	validates :first_name, presence: true, length: { minimum: 2} 
	validates :age, presence: true
end
