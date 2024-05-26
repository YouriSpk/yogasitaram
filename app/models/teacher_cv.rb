class TeacherCv < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :experience, presence: true
  validates :certifications, presence: true
end
