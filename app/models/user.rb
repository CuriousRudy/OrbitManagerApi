class User < ApplicationRecord
  has_secure_password
  has_many :memberships
  has_many :clan, through: :memberships
  has_many :messages



end
