class AddSubTotalInPrescriptionMedicines < ActiveRecord::Migration[6.1]
  def change
    add_column :prescription_medicines, :subtotal, :float, :default => 0
  end
end
