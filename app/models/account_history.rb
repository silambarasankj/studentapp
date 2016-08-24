class AccountHistory < ApplicationRecord
validates :limit, numericality: true, length: {minimum:4, maximum:7}
validates_associated :account, uniqueness: true

belongs_to :account
has_one :employee, through: :account
end

