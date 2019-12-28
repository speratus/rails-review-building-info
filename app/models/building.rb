class Building < ApplicationRecord
  belongs_to :district

  validates :name, :owner, :leasee, :district_id, presence: true
end
