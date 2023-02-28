class Post < ApplicationRecord
    belongs_to :post_title, optional: true
    belongs_to :post_level, optional: true
    belongs_to :organization_type, optional: true
    has_many :appointments
end
