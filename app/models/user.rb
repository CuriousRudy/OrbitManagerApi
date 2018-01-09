class User < ApplicationRecord
  has_many :memberships
  has_many :clan, through: :memberships
  has_many :messages



end
