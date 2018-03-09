class Organization < ApplicationRecord
  has_many :projects, class_name: "Project"
  validates :name, :presence => true
end
