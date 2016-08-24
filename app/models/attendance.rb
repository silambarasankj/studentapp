class Attendance < ApplicationRecord
  validates :day, presence: true
  validate :day_cannot_be_in_the_past
  belongs_to :employee
  has_many :attendance_periods


 def day_cannot_be_in_the_past
    if day.present? && day < Date.today
      errors.add(:day, "can't be in the past")
    end
  end

end
