class ExamCreation < ApplicationRecord
  belongs_to :subject
  belongs_to :topic
  has_many :questions
end
