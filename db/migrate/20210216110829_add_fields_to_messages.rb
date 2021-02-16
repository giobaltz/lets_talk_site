class AddFieldsToMessages < ActiveRecord::Migration[6.1]
  def change
    add_column :messages, :seen, :boolean
  end
  def up
    change_column_default :messages, :seen, false
  end
end
