class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :recrutation
  has_attached_file :document, styles: {thumbnail: "60x60#"}
  validates_attachment :document, content_type: { content_type: "application/pdf" }
end
