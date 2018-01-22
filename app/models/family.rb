class Family < ApplicationRecord
  has_secure_password
  has_many :family_memories
  has_many :users, through: :family_users
end
