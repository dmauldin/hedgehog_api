class User < ApplicationRecord
  has_many :projects
  has_many :comments
  has_many :owned_tickets, class_name: "Ticket", foreign_key: "owner_id"
  has_many :submitted_tickets, class_name: "Ticket", foreign_key: "submitter_id"
  has_many :watchers
  has_many :watched_tickets, through: :watches, source: :ticket
  validates :name, :email, presence: true
  validates :email, uniqueness: true
end
