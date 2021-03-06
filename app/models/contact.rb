# frozen_string_literal: true
class Contact < ApplicationRecord
  validates :name, :email, :content, presence: true
  validates :content, length: { minimum: 30 }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
