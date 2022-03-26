class Doctor < ApplicationRecord
    validates_presence_of :first_name, :last_name
    validates :first_name, length: { maximum: 50 }

    def full_name
        [first_name, last_name].join(' ')
    end

    has_many :prescriptions, dependent: :destroy
end
