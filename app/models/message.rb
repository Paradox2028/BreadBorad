class Message < ApplicationRecord
  validates :title, presence: true, length: { minimum: 1 }
  validates :username, presence: true, length: { minimum: 1 }
  validates :content, presence: true, length: { minimum: 1 }
end
