class RemoveSubTotal < ActiveRecord::Migration[6.1]
  def change
    remove_column :prescription_medicines, :subtotal
  end
end
