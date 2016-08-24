class AttendancePeriod < ApplicationRecord
  validates :from_hour, presence: true
  validates :to_hour, presence: true
  belongs_to :attendance
  has_many :employee, through: :attendance
  
=begin
	validate :validate_from_time
rescue Exception => e
	
end
  def validate_from_time
  	
  		errors.add(:from_hour,"cannot be nil#{self.from_hour}")
  	
  end
=end
end
