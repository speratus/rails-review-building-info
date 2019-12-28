class District < ApplicationRecord
    has_many :buildings

    validates :name, :district_type, presence: true
end
