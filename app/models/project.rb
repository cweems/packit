class Project < ApplicationRecord
  belongs_to :organization, class_name: "Organization"
  has_many :event, class_name: "Event"
  validates :title, :presence => true
end
