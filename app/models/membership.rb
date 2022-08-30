class Membership < ApplicationRecord
  validates :client, uniqueness: {scope: gym}

  belongs_to :gym
  belongs_to :client
end
