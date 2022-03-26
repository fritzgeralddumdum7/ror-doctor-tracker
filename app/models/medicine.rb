class Medicine < ApplicationRecord
    validates_presence_of :name, :price
    validates :type_of, presence: { message: 'type_of.blank' }
    validates :name, uniqueness: true

    has_many :prescription_medicines
end
