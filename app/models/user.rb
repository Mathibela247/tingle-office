class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

#broadcasts_to ->(user) { :users }
  belongs_to :race, optional: true
  belongs_to :gender, optional: true
  belongs_to :title, optional: true


  PROFILE_FIELDS = %i[name persal_number address].freeze

  def profile_complete?
    profile_complete == 100
  end

  def profile_complete
    fields_complete.zero? ? 16 : percent_complete
  end

  def missing_profile_section
    PROFILE_FIELDS.select { |f| __send__(f).blank? }.first
  end

  private

    def fields_complete
      Float(PROFILE_FIELDS.count { |f| __send__(f).present? })
    end

    def percent_complete
      fields_complete / fields_total * 100.0
    end

    def fields_total
      Float(PROFILE_FIELDS.count)
    end

end