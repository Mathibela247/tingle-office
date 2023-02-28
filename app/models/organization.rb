class Organization < ApplicationRecord
    has_many :users
    belongs_to :organization_type, optional: true
end
