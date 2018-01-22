class User < ApplicationRecord
  has_secure_password
  has_many :personal_memories
  has_many :families, through: :family_users
end
