class OrganizationUnit < ApplicationRecord
    belongs_to :organization_type
    has_many :posts
end
