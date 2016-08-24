class Employee < ApplicationRecord
  has_one :account
  has_one :account_history, through: :account
  has_many :attendances
  has_many :attendance_periods, through: :attendances
  validates :name, uniqueness: true, on: :create, presence: true

  



end