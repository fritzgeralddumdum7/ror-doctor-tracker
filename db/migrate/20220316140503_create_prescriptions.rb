class CreatePrescriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :prescriptions do |t|
      t.integer :doctor_id
      t.string :name
      t.string :type
      t.text :note
      t.integer :qty
      t.string :unit
      t.boolean :is_taken
      t.float :price

      t.timestamps
    end

    add_index :prescriptions, :doctor_id
  end
end
