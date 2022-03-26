class CreateMedicines < ActiveRecord::Migration[6.1]
  def change
    create_table :medicines do |t|
      t.string :name
      t.float :price
      t.string :type

      t.timestamps
    end
  end
end
