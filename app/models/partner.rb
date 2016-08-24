class Partner < ApplicationRecord
has_many :entry_logs, as: :log
has_many :comments, as: :commentable
end
