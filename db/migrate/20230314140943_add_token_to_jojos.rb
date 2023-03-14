class AddTokenToJojos < ActiveRecord::Migration[6.1]
  def change
    add_column :jojos, :token, :string, null: false
    add_index :jojos, :token
  end
end
