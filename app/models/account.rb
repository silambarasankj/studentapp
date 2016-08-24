class Account < ApplicationRecord
validates :number, presence: true, uniqueness: true
validates_associated :employee
belongs_to :employee
has_one :account_history
end
