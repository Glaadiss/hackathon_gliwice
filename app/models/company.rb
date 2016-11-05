class Company < ApplicationRecord
  belongs_to :user
  has_many :recrutations

  validates :map, presence: true

end
