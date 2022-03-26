class AddTitleInPrescription < ActiveRecord::Migration[6.1]
  def change
    add_column :prescriptions, :title, :text
  end
end
