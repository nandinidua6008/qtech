class Result < ApplicationRecord
  belongs_to :exam_creation
  belongs_to :schedule
  belongs_to :user
end
