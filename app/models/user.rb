class User < ApplicationRecord
  has_many :memberships
  has_many :messages
  has_one :clan, through: :memberships


end
