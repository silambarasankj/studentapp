class Standard < ApplicationRecord
has_many :tests
has_many :students, through: :tests
end
