class Contact < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :content, presence: true
  validates :content, length: { minimum: 30}
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create
end