class RenameTypeColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :medicines, :type, :type_of
  end
end
