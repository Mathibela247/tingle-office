class Appointment < ApplicationRecord
    belongs_to :appointment_status, optional: true
    belongs_to :post, optional: true
    belongs_to :user, optional: true
    has_many :submissions
end
