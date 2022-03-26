class CreatePrescriptionMedicines < ActiveRecord::Migration[6.1]
  def change
    create_table :prescription_medicines do |t|
      t.references :prescription, index: true, foreign_key: true
      t.references :medicine, index: true, foreign_key: true

      t.timestamps
    end
  end
end
