class Ticket < ApplicationRecord
  belongs_to :project
  belongs_to :status
  belongs_to :priority
  belongs_to :assignee, class_name: "User", optional: true
  belongs_to :submitter, class_name: "User"

  validates :title, presence: true
end
