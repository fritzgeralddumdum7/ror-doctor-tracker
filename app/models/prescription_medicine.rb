class PrescriptionMedicine < ApplicationRecord
    before_save :calculate_subtotal
    validates :medicine, presence: true
    validates :qty, presence: true, :numericality => { :other_than => 0 }

    belongs_to :prescription
    belongs_to :medicine

    def calculate_subtotal
        self.price = self.qty * self.medicine[:price]
    end
end
