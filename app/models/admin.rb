class Admin < ApplicationRecord
	has_many :users
	has_many :exam_creations
end
