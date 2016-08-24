class EntryLog < ApplicationRecord
  belongs_to :log, polymorphic: true
end
