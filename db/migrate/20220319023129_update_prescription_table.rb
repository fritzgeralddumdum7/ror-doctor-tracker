class UpdatePrescriptionTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :prescriptions, :name
    remove_column :prescriptions, :type
    remove_column :prescriptions, :price
    remove_column :prescriptions, :is_taken
    add_column :prescriptions, :start_date, :date, :null => true, :default => nil
    add_column :prescriptions, :end_date, :date, :null => true, :default => nil
  end
end
