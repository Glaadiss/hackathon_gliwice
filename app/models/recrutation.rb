class Recrutation < ApplicationRecord
  belongs_to :company
  belongs_to :job
  has_many :notifications
end
