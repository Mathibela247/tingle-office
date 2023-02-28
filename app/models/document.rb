class Document < ApplicationRecord
    validates_presence_of :title

  has_many_attached :docs
  belongs_to :submission
end
