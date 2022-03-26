class MoveColumnsToPresMeds < ActiveRecord::Migration[6.1]
  def change
    remove_column :prescriptions, :note
    remove_column :prescriptions, :qty
    remove_column :prescriptions, :unit
    remove_column :prescriptions, :start_date
    remove_column :prescriptions, :end_date
    add_column :prescription_medicines, :note, :text
    add_column :prescription_medicines, :qty, :integer
    add_column :prescription_medicines, :unit, :string
    add_column :prescription_medicines, :start_date, :date, :null => true, :default => nil
    add_column :prescription_medicines, :end_date, :date, :null => true, :default => nil
  end
end
