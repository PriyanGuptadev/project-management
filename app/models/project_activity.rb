class ProjectActivity < ApplicationRecord
  enum :activity_type, { comment: 0, status_change: 1 }, validate: true

  belongs_to :project
  belongs_to :user
end
