class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	has_many :results
	has_many :exam_schedule
	 validates :email, uniqueness: true
	validates :firstname,:lastname, presence: true
	validates :password, length: {in: 6..20}
	 validates :phone_number, length: { in: 6..20}
end
