class Subject < ApplicationRecord
	has_many :topics
	validates :name, uniqueness: true, presence: true
end
