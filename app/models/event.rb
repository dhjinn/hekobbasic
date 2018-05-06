class Event < ApplicationRecord
	belongs_to :teacher 
	has_many :students
end
