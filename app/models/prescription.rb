class Prescription < ApplicationRecord
    validates_presence_of :title

    belongs_to :doctor

    has_many :prescription_medicines, dependent: :delete_all
    has_many :medicines

    accepts_nested_attributes_for :prescription_medicines
end
