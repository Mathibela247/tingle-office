class OrganizationType < ApplicationRecord
    has_one :post
    has_many :organization
end
