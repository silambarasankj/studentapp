class Student < ApplicationRecord
has_many :tests
has_many :standards, through: :tests
end
