class Company < ApplicationRecord
  has_many :users
  has_many :recrutations

  validates :map, presence: true

end
