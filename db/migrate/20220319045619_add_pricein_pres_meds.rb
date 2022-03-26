class AddPriceinPresMeds < ActiveRecord::Migration[6.1]
  def change
    add_column :prescription_medicines, :price, :float
  end
end
