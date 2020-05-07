class User < ApplicationRecord
	has_many :results
	has_many :exam_schedule
	# validates :email, uniqueness: true
	# validates :firstname,:lastname, presence: true
	# validates :password, length: {in: 6..20}
	# validates :phone_number, length: { in: 9..20}
end
