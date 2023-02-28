class Submission < ApplicationRecord
    validates :title, presence: true

    has_many_attached :docs do |attachable|
        attachable.variant :thumb, resize_to_limit: [100, 100]
        attachable.variant :medium, resize_to_limit: [300, 300]
    end

    scope :ordered, -> { order(created_at: :desc) }

    #after_create_commit -> { broadcast_prepend_later_to "submissions" }
    #after_update_commit -> { broadcast_replace_later_to "submissions" }
    #after_destroy_commit -> { broadcast_remove_to "submissions" }
    broadcasts_to ->(submission) { "submissions" }, inserts_by: :prepend

    belongs_to :appointment
    belongs_to :user
    
end
