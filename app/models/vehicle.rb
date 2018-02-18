class Vehicle < ApplicationRecord
  belongs_to :owner

  def self.by_owner(owner_id)
    where(owner: owner_id)
  end
end
