class Event < ApplicationRecord
  belongs_to :project, class_name: "Project"
  validates :duration, :presence => true
  validates :size, :presence => true
end
